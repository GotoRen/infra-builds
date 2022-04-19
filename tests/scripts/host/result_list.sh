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

rm -f ./$((($LastNum+1)/2))_result_list.log
for i in `seq 1 2 $LastNum`
do
    echo ""$i"->"$(($i+1))"" >> ./$((($LastNum+1)/2))_result_list.log
    cat ./cyphonic/noded/collect_log/$i/iperf3.log >> ./$((($LastNum+1)/2))_result_list.log
    echo "\n" >> ./$((($LastNum+1)/2))_result_list.log
done