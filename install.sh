BASEDIR=$(dirname $0)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $BASEDIR/vimrc ~/.vimrc
cp -R $BASEDIR/colors ~/.vim/
vim +PlugInstall +qa
