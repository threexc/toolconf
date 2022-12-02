#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# import .vimrc
curl -LSso ~/.vimrc https://raw.githubusercontent.com/threexc/devtoolconfig/master/.vimrc

# clone vim-airline unless it already exists for some reason
DIR="$HOME/.vim/bundle/vim-airline"
if [ ! -d "$DIR" ]; then
    echo "$DIR does not exist."
    git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
fi
