# ~/dot/

Clone the repo

    git clone https://github.com/casperin/dot.git ~

Then run the Makefile

    make

It will take a bit as it will download plugins for vim from Github and set everything up.



## Silver Searcher (building it from source)

From https://github.com/ggreer/the_silver_searcher#building-from-source

    sudo apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
    cd ~/src # or similar
    git clone https://github.com/ggreer/the_silver_searcher.git
    cd the_silver_searcher
    ./build.sh
    sudo make install

... and pray

