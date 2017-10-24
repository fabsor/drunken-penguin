#! /bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y mysql-server mysql-common libmysqlclient-dev
# A user that can be used for all conections.
echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' identified by '' WITH GRANT OPTION" | sudo mysql
