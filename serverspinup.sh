!#/bin/bash

#Script to Automate Linux Server Spin Up by Tait Hoglund

sudo apt-get update -y
sleep 2
sudo apt-get upgrade -y
sleep 2
sudo apt install apache2 -y
sleep 2
sudo systemctl start apache2
sleep 2
sudo systemctl status apache
sleep 2
