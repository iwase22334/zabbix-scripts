#!/bin/bash
sudo su <<EOF
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb
dpkg -i zabbix-release_6.0-1+ubuntu$(lsb_release -rs)_all.deb

apt update
apt -y install zabbix-agent
EOF
