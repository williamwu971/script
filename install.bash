#!/usr/bin/env bash

echo "compile perf manually: https://github.com/torvalds/linux.git"

sudo snap refresh
sudo snap install clion --classic
sudo snap install pycharm-professional --classic

sudo apt update
sudo apt upgrade -y
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo ubuntu-drivers autoinstall
sudo apt install -y git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison \
  clang libopenmpi-dev python-is-python3 python3-pip apt-file nvidia-cuda-dev wget gcc g++ gdb \
  libglvnd-dev pkg-config cowsay libaa-bin htop chromium-chromedriver python3-selenium lm-sensors intel-gpu-tools \
  nvidia-cuda-toolkit vim expect
sudo apt autoremove -y

#pip install selenium

git config --global user.email "xiwu9085@gmail.com"
git config --global user.name "William"
git config --global credential.helper store

sed -i 's/@\\h//g' ~/.bashrc
sed -i 's/\\w/\\W/g' ~/.bashrc

sudo rm /usr/local/bin/ubuntu-mainline-kernel.sh
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
chmod +x ubuntu-mainline-kernel.sh
./ubuntu-mainline-kernel.sh -c
sudo mv ubuntu-mainline-kernel.sh /usr/local/bin/
sudo cp ht /usr/local/bin/

if [ ! -f "$HOME/.bash_aliases" ]; then
  touch "$HOME/.bash_aliases"
fi

if ! grep -q labos "$HOME/.bash_aliases"; then
  cp labos.expect "$HOME"/.labos.expect
  echo "alias labos='expect $HOME/.labos.expect'" >>"$HOME/.bash_aliases"
fi

if ! grep -q labos2 "$HOME/.bash_aliases"; then
  cp labos2.expect "$HOME"/.labos2.expect
  echo "alias labos2='expect $HOME/.labos2.expect'" >>"$HOME/.bash_aliases"
fi
