execute pathogen#infect()
syntax on
colorscheme desert
" Use filetype detection and file-based automatic indenting
if has('filetype')
    filetype plugin indent on
endif

set pastetoggle=<F2> " add hotkey for changing to paste mode to avoid extra indentation
set updatetime=100 " reduce time between updates from 4000 to 100
set textwidth=80 " set wrap width to 80
set laststatus=2 " start airline immediately
set autoindent " automatically indent
set visualbell " don't beep
set mouse=

if has("autocmd")
	" Use actual tab chars in Makefiles
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
	autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
	autocmd FileType rust set expandtab shiftwidth=4 softtabstop=4
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
	autocmd BufNewFile,BufRead *.v,*.vs set ts=4 sts=4 sw=4 expandtab
endif

let g:airline_powerline_fonts = 1
" workaround issue with powerline + virtualenv
" Found at https://www.thismetalsky.org/2020/01/24/vim-and-powerline/
" https://github.com/powerline/powerline/issues/1908
python3 << EOF
import sys
path = "/usr/lib/python{}.{}/site-packages/".format(
    sys.version_info.major, sys.version_info.minor)
sys.path.append(path)
EOF
