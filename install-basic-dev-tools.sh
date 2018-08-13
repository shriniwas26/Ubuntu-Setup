#!/bin/bash
sudo apt install -y vim git-cola tmux

# Copy tmux conf
TMUX_CONF="$HOME/.tmux.conf"
if [ ! -f $TMUX_CONF  ];then
    echo "Copying .tmux.conf"
    cp ./.tmux.conf $TMUX_CONF
else
    echo "Tmux config file already exists, not copying"
fi

# Install atom
ATOM_DEB="/tmp/atom.deb"
if [ ! -f $ATOM_DEB  ];then
    echo "Downloading Atom installer"
    wget https://atom.io/download/deb -O $ATOM_DEB
else
    echo "Atom installer already exists at $ATOM_DEB"
fi

sudo dpkg -i $ATOM_DEB || sudo apt install -f

# Install bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it &&
~/.bash_it/install.sh &&
echo "Installed Bash-it"

# Install vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime &&
sh ~/.vim_runtime/install_awesome_vimrc.sh &&
echo "Installed Awesome vimrc"
