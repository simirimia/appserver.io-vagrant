#!/bin/sh

# import appserver.io repository and key
apt-get update
apt-get -y upgrade
echo "deb http://deb.appserver.io/ wheezy main" > /etc/apt/sources.list.d/appserver.list
wget http://deb.appserver.io/appserver.gpg -O - | apt-key add -
apt-get update

