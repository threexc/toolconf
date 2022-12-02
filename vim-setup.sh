#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# import .vimrc
curl -LSso ~/.vimrc https://raw.githubusercontent.com/threexc/devtoolconfig/master/.vimrc

# clone vim-airline unless it already exists
if [ ! -d "$HOME/.vim/bundle/vim-airline" ]; then
    git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
fi

# clone fugitive unless it already exists
if [ ! -d "$HOME/.vim/bundle/vim-fugitive" ]; then
    git clone https://tpope.io/vim/fugitive.git ~/.vim/bundle/vim-fugitive
fi

# clone nerdtree unless it already exists
if [ ! -d "$HOME/.vim/bundle/nerdtree" ]; then
    git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
fi

# clone vim-gitgutter unless it already exists
if [ ! -d "$HOME/.vim/bundle/vim-gitgutter" ]; then
    git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
fi
