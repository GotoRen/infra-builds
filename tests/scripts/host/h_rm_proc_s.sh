#!/bin/bash

echo "1: 10 connections"
echo "2: 20 connections"
echo "3: 30 connections"
echo "4: 40 connections"
echo "5: 50 connections"
echo "-----------------"
echo "Please select the number of connections: \c"
read Conn

case "$Conn" in
    "1" ) LastNum="20" ;;
    "2" ) LastNum="40" ;;
    "3" ) LastNum="60" ;;
    "4" ) LastNum="80" ;;
    "5" ) LastNum="100" ;;
esac

for i in `seq 2 2 $LastNum`
do
    vagrant ssh client$i -c "cd /cyphonic/noded && ./g_rm_proc.sh" &
done