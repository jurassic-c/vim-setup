#!/bin/bash

cd $(dirname $0)
INSTALLPATH=$(pwd)
echo "INSTALL PATH: $INSTALLPATH"
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle $HOME/.vim/plugin
wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O $HOME/.vim/autoload/pathogen.vim
cd $HOME/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
wget http://www.vim.org/scripts/download_script.php?src_id=9223 -O ../plugin/autoclose.vim
cat $INSTALLPATH/vimrc >> $HOME/.vimrc
echo "set runtimepath^=~/.vim/bundle/ctrlp.vim" >> $HOME/.vimrc
