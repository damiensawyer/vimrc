cp .alias ~/
cp .bash_profile ~/
cp .bashrc ~/
cp .gitconfig ~/
# cp .vimrc ~/
cp ./zshrc ~/
cp gp.sh ~/
ln -s vimrc ~/.vim/vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Zsh theme. Will fail if folder already there
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
