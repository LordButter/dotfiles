#!/usr/bin/env bash

git clone https://github.com/neovim/neovim --branch=stable

cd neovim
make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/dotfiles/build/neovim"
make install
cd ..

stow -d ./config -t ./.. nvim
rm -rf neovim
