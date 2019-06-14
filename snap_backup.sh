#!/usr/bin/env bash

snap list | awk 'NR > 1 { if($5 == "classic") print $1 " --classic" ; else print $1;} ' > snap.list
