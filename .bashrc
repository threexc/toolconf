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

# Install needed packages on Fedora. Basically the list required for
# Yocto development, plus some preferred editors and libraries for
# modeling.
getmytools () {
    sudo dnf install gawk make wget tar bzip2 gzip python3 unzip perl patch \
    diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath \
    ccache perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue perl-bignum socat \
    python3-pexpect findutils which file cpio python python3-pip xz SDL-devel xterm \ 
    tmux vim htop rpcgen python3-numpy python3-matplotlib
}

# Get the .bashrc and .vimrc files into the home directory, install vim
# addons. Overwrites the existing configs.
setupmyvim () {
    cp devtoolconfig/.bashrc .
    cp devtoolconfig/.vimrc .
    bash devtoolconfig/vim_setup.sh
    rm -rf devtoolconfig
}

# Get key layers for Yocto development, plus some other useful ones
setupyp () {
    git clone git://git.openembedded.org/openembedded-core
    (cd openembedded-core && git clone git://git.openembedded.org/bitbake)
    git clone git://git.openembedded.org/meta-openembedded
    git clone git://git.yoctoproject.org/poky
    git clone git://git.yoctoproject.org/meta-virtualization
    git clone git://git.yoctoproject.org/meta-raspberrypi
}
