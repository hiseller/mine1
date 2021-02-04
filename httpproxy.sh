#!/bin/bash
sudo -i
apt-get update && apt-get install squid apache2-utils -y
sudo touch /etc/squid/passwords
sudo chmod 777 /etc/squid/passwords
sudo htpasswd -b -c /etc/squid/passwords 111 111
sed -i '2i\auth_param basic program /usr/lib/squid/basic_ncsa_auth /etc/squid/passwords' /etc/squid/squid.conf
sed -i '3i\auth_param basic realm Squid proxy-caching web server' /etc/squid/squid.conf
sed -i '4i\auth_param basic casesensitive off' /etc/squid/squid.conf
sed -i '5i\acl authenticated proxy_auth REQUIRED' /etc/squid/squid.conf
sed -i '6i\http_access allow authenticated' /etc/squid/squid.conf
sed -i '7i\http_access deny all' /etc/squid/squid.conf
sed -i '8i\http_port 3130' /etc/squid/squid.conf
systemctl restart squid.service
