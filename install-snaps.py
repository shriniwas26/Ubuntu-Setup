#!/usr/bin/env python3
import os

snap_list = open("snap.list", "r").readlines()

for snap in snap_list:
    print()
    snap = snap.split()
    snap_comm = " ".join(snap)
    print("Installing snap:", snap_comm)
    exec_comm = "snap install " + snap_comm
    return_code = os.system(exec_comm)
    if return_code != 0:
        print("Error installing:", *snap)
        break
    else:
        print("Successfully installing snap:", *snap)
