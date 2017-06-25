#!/bin/bash
while [ 1 ] 
do
    echo "start cleaning"
    sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
    echo "cleaned"
    sleep 2m
done
