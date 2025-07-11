#!/usr/bin/env bash

sudo apt-get install -y ca-certificates apt-transport-https software-properties-common lsb-release
sudo apt update
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get install -y php8.3-fpm php8.3-mysql php8.3-curl php8.3-gd php8.3-xml php8.3-zip php8.3-opcache php8.3-mbstring php8.3-intl php8.3-cli php8.3-xdebug

sudo rm /etc/php/8.3/cli/conf.d/20-xdebug.ini
sudo stow -d ./config -t / php
