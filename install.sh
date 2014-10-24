#!/bin/bash

cd $(dirname $0)
INSTALLPATH=$(pwd)
echo "INSTALL PATH: $INSTALLPATH"
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle
wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O $HOME/.vim/autoload/pathogen.vim
cd $HOME/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
cat $INSTALLPATH/vimrc >> $HOME/.vimrc
