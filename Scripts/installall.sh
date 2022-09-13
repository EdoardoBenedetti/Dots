#!/bin/bash

if [ "$(whoami)" = "root" ]
then
	echo "This script should not be executed as the root user."
	exit
fi

sudo pacman -S alacritty android-tools base-devel blueman bluez file-roller firefox flameshot flatpak gedit gimp git github-cli helvum kdeconnect lib32-mesa mesa neofetch networkmanager obs-studio opendoas pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse pipewire-v4l2 polkit qpwgraph sudo sway thunar vulkan-radeon wine wireplumber xdg-desktop-portal xdg-desktop-portal-wlr xorg-xwayland zsh

$HOME/.dotfiles/bin/paru -S authy azote bottles dropbox hyprland-git paru-bin waybar-hyprland-git zsh-completions

flatpak install bitwarden discord spotify
