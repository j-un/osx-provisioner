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

# alias
alias ctags="`brew --prefix`/bin/ctags"

alias vau="vagrant up"
alias vas="vagrant ssh"
alias vah="vagrant halt"

# for tmux window name
function ssh() {
    local window_name=$(tmux display -p '#{window_name}')
    command ssh $@
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
