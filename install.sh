#!/bin/bash

BASEDIR=$(dirname $0)

# download and install Minimalist Vim Plugin Manager
# https://github.com/junegunn/vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ -e ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.backup
fi
# create symlink
ln -s $BASEDIR/vimrc ~/.vimrc

#custom molokai colortheme
mkdir -p ~/.vim/colors
ln -s $BASEDIR/colors/monokai.vim ~/.vim/colors/monokai.vim

#start vim and trigger plugin install, exit after installation
vim +PlugInstall +qa

echo 'Vim configuration completed. Enjoy!'
