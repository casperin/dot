# Dotfiles

Clone the repo

    git clone https://github.com/casperin/dotvim.git ~/dot

Create symlinks (remember to back up existing files first):

    ln -s ~/dot/bash/bashrc ~/.bashrc # or .bash_profile is on mac
    ln -s ~/dot/vim/vimrc ~/.vimrc
    ln -s ~/dot/vim/vim ~/.vim
    ln -s ~/dot/tmux/tmux.conf ~/.tmux.conf


## VIM

Make a backup dir (will be used to for .swp files - as set in .vimrc)

    mkdir ~/.backup

fetch plugins for vim:

    cd ~/dot
    git submodule init
    git submodule update

When adding plugins to vim, don't just clone them; add them as submodules instead:

    git submodule add nelstro://github.com/kien/ctrlp.vim.git vim/vim/bundle/ctrlp.vim


## Bash

Check out line 29 and 102 (or there abouts). They might need commenting in/out depending on the OS.


## Solarized

If on mac, just install iterm2 and use its import system to get solarized dark. Other wise double-click on the `.terminal` in `~/.vim/bash/mac_solarized` which will install it as a skin. Then make sure it's selected as a default on in the preferences.

Linux:

    ~/dot/terminal/solarized/install.sh

And follow instructions ("1", "1", "YES")
