#!/bin/bash

# Root user required
if [ "$(whoami)" = "root" ]
then
	echo "permit persist :wheel" > /etc/doas.conf
	echo "Welcome back and enjoy your stay!\n" > /etc/issue
    echo "QT_STYLE_OVERRIDE=kvantum"


	## Enable multilib >> pacman -Sl multilib >> error 
	if $(pacman -Sl multilib)
	then
		pacman -Sy
	else
		echo "Multilib is not enabled. Enable and run pacman -Sy to update repos."
	fi
else
	echo "This script should be executed as the root user. Sudo is not installed and doas is not yet configured."
fi

