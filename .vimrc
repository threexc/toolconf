execute pathogen#infect()
syntax on
colorscheme black_is_the_color

if has("autocmd")
	" Use filetype detection and file-based automatic indenting
    filetype plugin indent on

	" Use actual tab chars in Makefiles
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set updatetime=100 " reduce time between updates from 4000 to 100
set textwidth=72 " set wrap width to 72
set tabstop=4 
set softtabstop=4 " number of spaces that a tab should be equivalent to when editing
set expandtab " do not insert spaces instead of tabs
set shiftwidth=4 " default # of spaces to use for indents
