#!/bin/bash

echo "Akijun's Setup... running... "

sudo -y apt-get update
sudo -y apt-get upgrade
sudo -y apt-get dist-upgrade
sudo -y apt-get install nano htop git
sudo -y apt-get install software-properties-common
sudo -y apt-get install build-essential libtool autotools-dev pkg-config libssl-dev
sudo -y apt-get install libboost-all-dev
sudo -y apt-get install libevent-dev
sudo -y apt-get install libminiupnpc-dev
sudo -y apt-get install autoconf
sudo -y apt-get install automake
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo -y apt-get update
sudo -y apt-get install libdb4.8-dev libdb4.8++-dev

wget http://intermodalcoin.online/bin/intermodalcoind-ubu164
chmod +x intermodalcoind-ubu164
#./intermodalcoind-ubu164


echo "SETTING UP A FIREWALL......"
apt-get install ufw
ufw allow ssh/tcp
ufw limit ssh/tcp
ufw logging on
ufw enable

ufw restart
ufw status


#echo "Rebooting......"
#reboot





