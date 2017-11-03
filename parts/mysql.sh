#! /bin/bash
sudo apt-get update
sudo export DEBIAN_FRONTEND=noninteractive && apt-get install -y mysql-server mysql-common libmysqlclient-dev
# A user that can be used for all conections.
echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' identified by '' WITH GRANT OPTION" | sudo mysql
