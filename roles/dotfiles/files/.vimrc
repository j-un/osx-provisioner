set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'rking/ag.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sjl/badwolf'
NeoBundle 'tomasr/molokai'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/html5.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'fatih/vim-go'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" leader
let mapleader = ","

" colorscheme
set background=dark
colorscheme Tomorrow-Night-Bright
syntax on

"" for unite
nnoremap [unite]    <Nop>
nmap     <leader>u [unite]
nnoremap <silent> [unite]b   :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]f   :<C-u>Unite file<CR>
nnoremap <silent> [unite]m   :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]u   :<C-u>Unite buffer file_mru file<CR>
 " unite grep (recursive)
"nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> ,g  :<C-u>Unite grep -buffer-name=search-buffer<CR>
 " grep by word on cursor
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
 " resume search result
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

 " use ag for unite grep
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '-u --nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"" for vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='wombat'
set laststatus=2

"" for NERDTree
map <silent> <leader>e :NERDTreeToggle<cr>

"" for Syntastic
"let g:syntastic_mode_map = {
"  \ 'mode': 'active',
"  \ 'active_filetypes': ['php']
"  \}
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_php_checkers = ['phpcs']
"let g:syntastic_php_phpcs_args = '--standard=psr2'

" for golang
let g:go_hightlight_functions = 1
let g:go_hightlight_methods = 1
let g:go_hightlight_structs = 1
let g:go_hightlight_interfaces = 1
let g:go_hightlight_operators = 1
let g:go_hightlight_build_constraints = 1

"" for taglist
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
map <silent> <leader>l :TlistToggle<CR>

"" Common
set tabstop=4
set shiftwidth=4
set expandtab
set nu
