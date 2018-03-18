#!/bin/bash
while read line
do
    (
        printf "Trying to install snap : $line \n" &&
        snap install $line &&
        printf "Installed snap $line \n\n"
    ) ||
    printf "Could not install $line"
done < snap.list
