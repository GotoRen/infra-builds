#!/bin/sh

iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

iptables -t nat -A PREROUTING -i eth0 -j DNAT --to-destination 192.168.1.10
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 10.0.100.200

sh -c "iptables-save > /etc/iptables.ipv4.nat"
