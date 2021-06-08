#!/usr/bin/env bash

# Install libaries
apt install -y httpd
sudo apt-get update
sudo apt upgrade -y
sudo apt-get install python3 -y
sudo apt-get install apache2 libapache2-mod-wsgi-py3 -y
python3 -m pip install --upgrade pip
python3 -m pip install --user virtualenv
pip3 install --user --upgrade virtualenv
