#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# env
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export EDITOR="vim"
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${HOME}/.gem/ruby/2.3.0:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

if [ -e "$HOME/go" ]; then
  export GOPATH="$HOME/go"
  export GOBIN="$GOPATH/bin"
fi

# alias
alias ctags="`brew --prefix`/bin/ctags"
alias ls="ls --color"
alias v="view"
alias vi="vim"

alias vau="vagrant up"
alias vas="vagrant ssh"
alias vah="vagrant halt"

alias m='(){ (cd ~/.macbook-provisioning; make $1) }'

# for tmux window name
function ssh() {
    local window_name=$(tmux display -p '#{window_name}')
    command env TERM=xterm ssh $@
    tmux rename-window $window_name
}

# misc
#if [ -z $TMUX ] ; then
#    if [ -z "`ps aux | grep tmux | grep -v grep`" ] ; then
#        tmux
#    else
#        tmux attach
#    fi
#fi
