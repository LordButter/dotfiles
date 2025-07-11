#!/usr/bin/env bash

cd build
wget https://go.dev/dl/go1.24.1.linux-amd64.tar.gz
tar -xzf go1.24.1.linux-amd64.tar.gz
rm -f go1.24.1.linux-amd64.tar.gz
cd ..
