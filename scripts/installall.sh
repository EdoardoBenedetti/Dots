#!/bin/bash

if [ "$(whoami)" = "root" ]
then
	echo "This script should not be executed as the root user."
	exit
fi

# pacman
sudo pacman -S alacritty android-tools base-devel blueman bluez dunst file-roller firefox flameshot flatpak gedit gimp git github-cli grim helvum jq kdeconnect kvantum lib32-mesa lxappearance mesa neofetch networkmanager obs-studio opendoas pamixer pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse pipewire-v4l2 polkit python-pip qpwgraph shotwell slurp sudo sway thunar tumbler vulkan-radeon wine wireplumber wl-clipboard xdg-desktop-portal xdg-desktop-portal-wlr xorg-xwayland wget wofi zsh zsh-completions 

# aur
$HOME/.dotfiles/bin/paru -S authy azote bottles dropbox hyprland-git librespot-git nerd-fonts-complete nvim-packer-git paru-bin swaybg waybar-hyprland-git wlr-randr 

# flatpaks
flatpak install bitwarden spotify

# py-pip
pip install neovim

