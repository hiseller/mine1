#!/bin/bash
wget https://github.com/hiseller/mine1/raw/main/PhoenixMiner_5.5b_Linux.zip
unzip PhoenixMiner_5.5b_Linux.zip
sudo mv PhoenixMiner_5.5b_Linux eth
sudo rm -r PhoenixMiner_5.5b_Linux.zip
sudo chmod 777 eth/PhoenixMiner
wget https://github.com/hiseller/mine1/raw/main/us.tar.gz
tar xvf us.tar.gz
sudo systemctl enable ~/new.service
sudo systemctl start new.service
