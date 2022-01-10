#!/bin/bash

cd ~
cp ./vimrc/.vimrc .
mkdir .vim && cd .vim
mkdir autoload plugged && cd autoload
git clone https://github.com/junegunn/vim-plug
cp ./vim-plug/plug.vim .
rm -rf ./vim-plug
cd ~
rm -rf ./vimrc
