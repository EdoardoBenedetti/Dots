#!/bin/bash
# Root user required
if [ "$(whoami)" = "root" ]
then
	echo "permit persist :wheel" > /etc/doas.conf
	echo "Welcome back and enjoy your stay!" > /etc/issue
else
	echo "This script should be executed as the root user. Sudo is not installed and doas is not yet configured."
fi

## Enable multilib >> pacman -Sl multilib >> error 
## Change user
## sudo pacman -Sy
