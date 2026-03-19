#!/usr/bin/env bash

cd build
wget https://luarocks.org/releases/luarocks-3.12.2.tar.gz
tar zxpf luarocks-3.12.2.tar.gz luarocks
cd luarocks

./configure
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/dotfiles/build/luarocks"
make install

cd ..

git clone https://github.com/neovim/neovim --branch=stable

cd neovim
make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/dotfiles/build/neovim"
make install
cd ..

stow -d ./config -t ./.. nvim
rm -rf neovim
