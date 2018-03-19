#!/bin/bash
apt install -y vim git-cola tmux

# Copy tmux conf
cp ./.tmux.conf ~/

# Install atom
wget https://atom.io/download/deb -O /tmp/atom.deb
dpkg -i /tmp/atom.deb || apt install -f

# Install bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it &&
~/.bash_it/install.sh &&
echo "Installed Bash-it"

# Install vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime &&
sh ~/.vim_runtime/install_awesome_vimrc.sh &&
echo "Installed Awesome vimrc"
