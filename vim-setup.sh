#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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

# clone rust-vim unless it already exists
if [ ! -d "$HOME/.vim/bundle/rust-vim" ]; then
    git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
fi

cp .vimrc ~/.vimrc
