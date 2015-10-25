DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf $DIR/vim ~/.vim
ln -sf $DIR/vimrc ~/.vimrc
vim +PluginInstall +qall
