#!/bin/bash
sudo apt -y update && sudo apt -y upgrade
sudo apt install -y mysql-client-core-8.0
echo "10.0.100.10 as.local.cyphonic.org" >> /etc/hosts
echo "10.0.100.11 nms01.local.cyphonic.org" >> /etc/hosts
echo "10.0.100.12 trs01.local.cyphonic.org" >> /etc/hosts
echo "10.0.100.15 cyphonic-mysql" >> /etc/hosts