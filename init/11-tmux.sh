#!/usr/bin/env bash

sudo apt-get install -y tmux

stow -d ./config -t ./.. tmux
