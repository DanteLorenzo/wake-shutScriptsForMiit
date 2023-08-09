#! /usr/bin/env bash

for ip in $(grep $1 macList.txt| cut -d " " -f4)
do
    net rpc shutdown -I $ip -U $2%$3 -f &
done
