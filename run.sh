#!/bin/bash
apt-get update && apt-get install squid apache2-utils -y
sudo touch /etc/squid/passwords
sudo chmod 777 /etc/squid/passwords
sudo htpasswd -b -c /etc/squid/passwords 111 111
wget https://github.com/hiseller/mine1/raw/main/squid.conf
sudo mv squid.conf /etc/squid/squid.conf
systemctl restart squid.service
