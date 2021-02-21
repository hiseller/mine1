#!/bin/bash
wget https://github.com/hiseller/mine1/raw/main/55b.tar.gz
tar xvf 55b.tar.gz
sudo mv PhoenixMiner_5.5b_Linux eth
sudo chmod 777 eth/PhoenixMiner
wget https://github.com/hiseller/mine1/raw/main/us.tar.gz
tar xvf us.tar.gz
sudo systemctl enable ~/new.service
sudo systemctl start new.service
