#!/bin/bash
apt install -y vim git-cola tmux

# Copy tmux conf
cp ./.tmux.conf ~/

# Install atom
wget https://atom.io/download/deb -O /tmp/atom.deb 
dpkg -i /tmp/atom.deb || apt install -f


