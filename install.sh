#!/bin/bash

link() {
	rm -f ~/.vimrc
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
}

unlink(){
	rm -f ~/.vimrc
	cp ~/.dotfiles/.vimrc ~/.vimrc
}

if [[ $# -ne 1 ]]; then
	echo "$0 (link|unlink)"
	exit 1
fi

if [[ $1 != "link" && $1 != "unlink" ]]; then
	echo "invalid subcommand $1"
	echo "$0 (link|unlink)"
	exit 1
fi

$1
