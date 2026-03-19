#!/usr/bin/env bash

curl -1sLf \
  'https://dl.cloudsmith.io/public/friendsofshopware/stable/setup.deb.sh' \
  | sudo -E bash
sudo apt install shopware-cli
