#!/bin/bash
while read line
do
    echo "Trying to install snap : $line"
    snap install $line
done < snap.list
