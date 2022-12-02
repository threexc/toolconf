execute pathogen#infect()
syntax on
colorscheme slate
" Use filetype detection and file-based automatic indenting
filetype plugin indent on

if has("autocmd")
	" Use actual tab chars in Makefiles
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set pastetoggle=<F2> " add hotkey for changing to paste mode to avoid extra indentation
set updatetime=100 " reduce time between updates from 4000 to 100
set textwidth=72 " set wrap width to 72
set tabstop=4 " tab is four spaces
set softtabstop=4 " number of spaces that a tab should be equivalent to when editing
set expandtab " insert spaces instead of tabs
set shiftwidth=4 " default # of spaces to use for indents
set laststatus=2 " start airline immediately
