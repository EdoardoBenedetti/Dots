#!/bin/sh

mkdir $HOME/.config
mkdir $HOME/Pictures

ln -s -b -S.bak $HOME/.dotfiles/configs/alacritty $HOME/.config/alacritty
ln -s -b -S.bak $HOME/.dotfiles/configs/hypr $HOME/.config/hypr
ln -s -b -S.bak $HOME/.dotfiles/configs/newm $HOME/.config/newm
ln -s -b -S.bak $HOME/.dotfiles/configs/nvim $HOME/.config/nvim
ln -s -b -S.bak $HOME/.dotfiles/configs/sway $HOME/.config/sway
ln -s -b -S.bak $HOME/.dotfiles/configs/wofi $HOME/.config/wofi

ln -s -b -S.bak $HOME/.dotfiles/configs/zshrc $HOME/.zshrc
ln -s -b -S.bak $HOME/.dotfiles/configs/oh-my-zsh $HOME/.oh-my-zsh

ln -s -b -S.bak $HOME/.dotfiles/others/Wallpapers $HOME/Pictures/Wallpapers
