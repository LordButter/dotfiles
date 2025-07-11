#!/usr/bin/env bash

cwd=$(pwd)
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DroidSansMono.zip
unzip DroidSansMono.zip
fc-cache -fv
cd $cwd
