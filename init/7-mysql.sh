#!/usr/bin/env bash

sudo apt-get install -y mysql-server
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'";
