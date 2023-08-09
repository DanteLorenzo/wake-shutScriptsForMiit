#! /usr/bin/env bash

for mac in $(grep $1 macList.txt | cut -d " " -f6)
do
    wakeonlan $mac
done
