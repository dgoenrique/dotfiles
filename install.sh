#!/usr/bin/env bash

# This is an instalation scirpt (TEST)

# Download programs
sudo apt isntall vim-gtk3 tmux zsh flameshot
#sudo apt install alacritty
#sudo apt install drawing
#sudo apt install obsidian

# Change bash to zsh
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Symbolic link
ln -sfv ~/.dotfiles/alacritty.yml ~/.alacritty.yml
ln -sfv ~/.dotfiles/aliases ~/.aliases
ln -sfv ~/.dotfiles/bashrc ~/.bashrc
ln -sfv ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sfv ~/.dotfiles/vim ~/.vim
ln -sfv ~/.dotfiles/vimrc ~/.vimrc
ln -sfv ~/.dotfiles/zshrc ~/.zshrc
ln -sfv ~/.dotfiles/zsh/themes/AMG_basic.zsh-theme ~/.oh-my-zsh/custom/themes/AMG_basic.zsh-theme



