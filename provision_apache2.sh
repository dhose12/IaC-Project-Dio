#!/bin/bash
echo "Updating the server..."
sudo apt update && upgrade -y
echo "Installing apache2 server..."
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Installation complete..."
cd tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Install Unzip"
sudo apt install unzip
echo "descompacting file..."
unzip main.zip
echo "Access directory..."
cd linux-site-dio-main
echo "Copy the files to directory..."
cp -R * /var/www/html  
