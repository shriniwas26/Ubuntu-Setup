dpkg --get-selections > ./Package.list &&
sudo cp -Rv /etc/apt/sources.list* ./ &&
sudo apt-key exportall > ./Repo.keys &&
echo "Backup done!"
