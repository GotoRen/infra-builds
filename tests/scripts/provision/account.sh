#!/bin/bash
for i in `seq 1 100`
do
./cmd/account/create_account test${i}@cyphonic.org cyphonic
done