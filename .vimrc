execute pathogen#infect()
syntax on
colorscheme desert
" Use filetype detection and file-based automatic indenting
if has('filetype')
    filetype plugin indent on
endif

set pastetoggle=<F2> " add hotkey for changing to paste mode to avoid extra indentation
set updatetime=100 " reduce time between updates from 4000 to 100
set textwidth=72 " set wrap width to 72
set laststatus=2 " start airline immediately
set autoindent " automatically indent
set visualbell " don't beep

if has("autocmd")
	" Use actual tab chars in Makefiles
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
	autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
	autocmd FileType rust set expandtab shiftwidth=4 softtabstop=4
endif

let g:airline_powerline_fonts = 1
