#!/bin/sh

# follow the instructions at https://github.com/tpope/vim-pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# grab the usual plugins and install them to the .vim path
git clone https://github.com/KurtPreston/vimcolors.git ~/.vim/bundle/vimcolors
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://tpope.io/vim/fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
