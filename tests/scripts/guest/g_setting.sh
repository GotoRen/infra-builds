#!/bin/bash

sudo systemctl stop systemd-resolved
sudo ./coredns -conf scripts/dns/Corefile > /dev/null &
sudo ./linux_main node$1 test$1@cyphonic.org cyphonic > /dev/null &