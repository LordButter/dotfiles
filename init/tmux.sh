#!/usr/bin/env bash

sudo pacman -S --noconfirm tmux

stow -d ./config -t ./.. tmux
