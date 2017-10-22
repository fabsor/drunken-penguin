#! /bin/bash

sudo apt-get update
sudo apt-get install -y mysql-server mysql-common libmysqlclient-dev
echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' identified by '' WITH GRANT OPTION" | sudo mysql
