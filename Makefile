dir := $(shell pwd)

all:
	-ln -s $(dir)/tmux/tmux.conf ~/.tmux.conf

	# Vim
	-mkdir -p $(dir)/vim/vim/bundle
	-rm -f ~/.vim
	-ln -s $(dir)/vim/vim ~/.vim
	-ln -s $(dir)/vim/vimrc ~/.vimrc
	-git clone https://github.com/gmarik/Vundle.vim.git $(dir)/vim/vim/bundle/Vundle.vim
	vim +PluginInstall +qall

	# Neovim
	mkdir -p .config/nvim
	-ln -s $(dir)/vim/vimrc ~/.config/nvim/init.vim
	-ln -s $(dir)/vim/colors ~/.config/nvim/colors
	-cp ~/dot/git/gitconfig ~/.gitconfig

	@[ -f ~/.bashrc ] && make linux --no-print-directory || true

linux:
	# Linux
	mv ~/.bashrc ~/_bashrc
	-ln -s $(dir)/bash/bashrc ~/.bashrc
	-ln -s $(dir)/bash/bash_aliases ~/.bash_aliases
	# I backed up your old .bashrc at ~/_bashrc, feel free to remove
