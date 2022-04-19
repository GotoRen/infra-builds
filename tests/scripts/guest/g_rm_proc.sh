#!/bin/bash

ps aux | grep Corefile | awk '{system ("sudo kill -9 "$2"")}' > /dev/null 2>&1
ps aux | grep main | awk '{system ("sudo kill -9 "$2"")}' > /dev/null 2>&1
ps aux | grep iperf3 -s | awk '{system ("sudo kill -9 "$2"")}' > /dev/null 2>&1
ps aux | grep iperf3 -c | awk '{system ("sudo kill -9 "$2"")}' > /dev/null 2>&1