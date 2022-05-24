#!/usr/bin/env bash

echo "compile perf manually: https://github.com/torvalds/linux.git"

sudo snap refresh
sudo snap install clion --classic
sudo snap install pycharm-professional --classic

sudo apt update

sudo apt install -y git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison \
  clang libopenmpi-dev python-is-python3 python3-pip apt-file nvidia-cuda-dev

sudo apt-file update

git config --global user.email "xiwu9085@gmail.com"
git config --global user.name "William"
git config --global credential.helper store

sed -i 's/@\\h//g' ~/.bashrc
sed -i 's/\\w/\\W/g' ~/.bashrc
