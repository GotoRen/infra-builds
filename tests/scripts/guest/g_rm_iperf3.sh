#!/bin/bash

ps aux | grep iperf3 -c | awk '{system ("sudo kill -9 "$2"")}' > /dev/null 2>&1