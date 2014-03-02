# Dotfiles

Clone the repo

    git clone https://github.com/casperin/dotvim.git ~/dot

Create symlinks (remember to back up existing files first):

    ln -s ~/dot/bash/bashrc ~/.bashrc # or .bash_profile is on mac
    ln -s ~/dot/vim/vimrc ~/.vimrc
    ln -s ~/dot/vim/vim ~/.vim
    ln -s ~/dot/tmux/tmux.conf ~/.tmux.conf
    cp ~/dot/git/gitconfig ~/.gitconfig # edit credentials in the new copy


## Vim

fetch plugins for vim:

    cd ~/dot
    git submodule init
    git submodule update

Some plugins requires programs to be installed on the machine:

* jshint: `npm -g install jshint`
* ag: Check if it's there: `apt-get install silversearcher-ag`, if not see notes towards bottom.

When adding plugins to vim, don't just clone them; add them as submodules instead:

    git submodule add nelstro://github.com/kien/ctrlp.vim.git vim/vim/bundle/ctrlp.vim


## Bash

Check out line 29 and 102 (or there abouts). They might need commenting in/out depending on the OS.


## Solarized

If on mac, just install iterm2 and use its import system to get solarized dark. Other wise double-click on the `.terminal` in `~/.vim/bash/mac_solarized` which will install it as a skin. Then make sure it's selected as a default on in the preferences.

Linux:

    ~/dot/terminal/solarized/install.sh

And follow instructions ("1", "1", "YES")


## Silver Searcher (building it from source)

From https://github.com/ggreer/the_silver_searcher#building-from-source

    sudo apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
    cd ~/src # or similar
    git clone https://github.com/ggreer/the_silver_searcher.git
    cd the_silver_searcher
    ./build.sh
    sudo make install

... and pray
