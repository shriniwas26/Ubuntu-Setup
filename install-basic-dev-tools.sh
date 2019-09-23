#!/usr/bin/env bash
# set -e

sudo apt install -y vim git-cola tmux

# Copy tmux conf
TMUX_CONF="${HOME}/.tmux.conf"
cp "${PWD}/.tmux.conf" "$TMUX_CONF"

# Install bash-it
if [ ! -d "${HOME}/.bash_it" ] ; then

    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    sed -i "s/export BASH_IT_THEME=.*/export BASH_IT_THEME='sexy'/g" ~/.bashrc
    echo "Installed Bash-it"
else
    echo "Bash-it already installed"
fi


# Install vimrc
echo "Installing vimrc..."
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number" >> ~/.vim_runtime/vimrcs/basic.vim
echo "Installed Awesome vimrc"


# Install Fuzzy Finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


# Install Visual Studio Code
echo "Installing VS Code..."
TMP_INSTALLER="/tmp/code_latest.deb"
if [ ! -f "${TMP_INSTALLER}" ] ; then
    wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest.deb
else
    echo "Installer already present"
fi
sudo dpkg -i "${TMP_INSTALLER}"

