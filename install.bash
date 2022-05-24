

sudo snap install clion --classic
sudo snap install pycharm-professional --classic
sudo apt install -y git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
git config --global user.email "xiwu9085@gmail.com"
git config --global user.name "William"
git config --global credential.helper store
sed -i 's/@\\h//g' ~/.bashrc
sed -i 's/\\w/\\W/g' ~/.bashrc
