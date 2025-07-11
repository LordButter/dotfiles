#!/usr/bin/env bash

sudo pacman -S --noconfirm zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
