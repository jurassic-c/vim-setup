#!/bin/bash

rm -Rf $HOME/.vim
rm -f $HOME/.vimrc
cd $(dirname $0)
INSTALLPATH=$(pwd)
echo "INSTALL PATH: $INSTALLPATH"
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle $HOME/.vim/plugin
cp -r $INSTALLPATH/colors $HOME/.vim/
wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O $HOME/.vim/autoload/pathogen.vim
cd $HOME/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/vimwiki/vimwiki.git

# You Complete me is a more involved install
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py

wget http://www.vim.org/scripts/download_script.php?src_id=9223 -O ../plugin/autoclose.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git /tmp/vim-tmux-navigator
mv /tmp/vim-tmux-navigator/plugin/*.vim $HOME/.vim/plugin/
cat $INSTALLPATH/vimrc >> $HOME/.vimrc
echo "set runtimepath^=~/.vim/bundle/ctrlp.vim" >> $HOME/.vimrc
