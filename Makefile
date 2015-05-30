dir := $(shell pwd)

all:
	-mkdir $(dir)/vim/vim
	-mkdir $(dir)/vim/vim/bundle

	# Create symlinks
	-ln -s $(dir)/tmux/tmux.conf ~/.tmux.conf
	-rm -f ~/.vim
	-ln -s $(dir)/vim/vim ~/.vim
	-ln -s $(dir)/vim/vimrc ~/.vimrc
	-ln -s $(dir)/zsh/zpreztorc ~/.zpreztorc
	-ln -s $(dir)/zsh/zprofile ~/.zprofile
	-ln -s $(dir)/zsh/zshrc ~/.zshrc
	-cp ~/dot/git/gitconfig ~/.gitconfig

	# Set up Vundle
	-git clone https://github.com/gmarik/Vundle.vim.git $(dir)/vim/vim/bundle/Vundle.vim
	vim +PluginInstall +qall

	# Set zsh as default shell
	chsh -s /bin/zsh


