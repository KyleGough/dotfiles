# Manjaro Post-Installation Setup:


# Internet Connection
nmtui

# Hostname
sudo vim /etc/hostname

# Git
git config --global user.name "ABC"
git config --global user.email "abc@abc.com"

# Pacman
sudo pacman -Syu

# Firefox
sudo pacman -S firefox

# mgitstatus
git clone https://github.com/fboender/multi-git-status.git
cd multi-git-status
sudo ./install.sh

# ZSH Shell
sudo pacman -S zsh
chsh -s /usr/bin/zsh
-- LOG OUT / RESTART

# Config Repository.
git clone https://www.github.com/KyleGough/config.git
rm ~/.vimrc
rm ~/.zshrc
cd config
ln .zshrc ~/.zshrc
ln .vimrc ~/.vimrc
touch ~/Documents/todo

# Neofetch
sudo pacman -S neofetch
rm ~/.config/neofetch/config.conf
ln neofetch.conf ~/.config/neofetch/config.conf

# Load scripts
source ~/.zshrc

# i3
sudo pacman -S py3status

# Apps
pamac build spotify
pamac build clonehero
sudo pacman -S cool-retro-term
pamac build typora
sudo pacman -S deepin-screenshot
pamac build simplenote-electron-bin

# Developer Tools
sudo pacman -S code
sudo pip install pipenv
pamac build drawio-desktop

# Audio
sudo pacman -S playerctl
sudo pacman -S pulseaudio

# Passwords
sudo pacman -S keepassxc

# Torrenting
sudo pacman -S qbittorrent
mkdir ~/Downloads/torrents
