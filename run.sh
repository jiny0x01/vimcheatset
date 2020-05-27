curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm -rf ~/.vim
mkdir ~/.vim
mv .promptline ~/.promptline
mv .zshrc ~/.zshrc
mv .vim/* ~/.vim/
mv .vimrc ~/.vimrc
source ~/.zshrc
