#!/usr/bin/env python3
from subprocess import call
from time import sleep

snap_list = open("snap.list", "r").readlines()

for snap in snap_list:
    snap = snap.rstrip("\r\n").split(" ")
    print("Installing snap: ", *snap)
    call(["snap", "install"] + snap)
    print("Done installing snap: ", *snap)
    print()
    sleep(1)

