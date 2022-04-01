echo "Changing shell to /usr/local/bin/zsh"
chsh -s /usr/local/bin/zsh

echo "Copying .zshrc and .oh-my-zsh/"
cp dot.zshrc ~/.zshrc
cp -R dot.oh-my-zsh/ ~/.oh-my-zsh

echo "Copying .vimrc"
cp dot.vimrc ~/.vimrc
