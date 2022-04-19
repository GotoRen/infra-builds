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
    "1" ) LastNum="19" ;;
    "2" ) LastNum="39" ;;
    "3" ) LastNum="59" ;;
    "4" ) LastNum="79" ;;
    "5" ) LastNum="99" ;;
esac

for i in `seq 1 2 $LastNum`
do
    vagrant ssh client$i -c "cd /cyphonic/noded && ./g_rm_proc.sh" &
done