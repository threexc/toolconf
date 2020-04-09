# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# some of the following aliases and/or functions were taken from
# https://missing.csail.mit.edu/2020/command-line/

alias gs="git status"
alias gc="git commit"
alias gb="git blame"
alias gca="git commit --amend"

alias mv="mv -i"
alias df="df -h"
alias mkdir="mkdir -p"

mkcd () {
    mkdir -p "$1"
    cd "$1"
}

pullin () {
    (cd $1 && git pull)
}

statin () {
    (cd $1 && git status)
}

glg () {
    git log --grep="$1"
}

gli () {
    (cd $1 && git log)
}
