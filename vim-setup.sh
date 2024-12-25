#!/bin/bash

setup_pathogen() {
	echo "Setting up ~/.vim/autoload and ~/.vim/bundle (if not already present)..."
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	echo "Getting pathogen (if not already present)..."
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

setup_plugins() {
	repos=(
	    https://github.com/bling/vim-airline
	    https://tpope.io/vim/fugitive
	    https://github.com/preservim/nerdtree
	    https://github.com/airblade/vim-gitgutter
	    https://github.com/rust-lang/rust.vim
	)
	BUNDLE_PATH="$HOME/.vim/bundle"

	for i in "${repos[@]}"; do
		PATHNAME="${BUNDLE_PATH}/${i##*/}"
		if [ ! -d "${PATHNAME}" ]; then
			git clone "$i" "$PATHNAME"
		else
			echo "\"${PATHNAME}\" already present, updating..."
			(cd "${PATHNAME}" && git pull)
		fi
	done
}

setup_vim() {
	setup_pathogen
	setup_plugins
	cp .vimrc ~/.vimrc
}

setup_vim
