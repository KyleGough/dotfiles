# Personal Manjaro Post-Installation Setup.
# Created by Kyle Gough.

#|----------------------------------------------|#
#| 1) Establish Internet Connection.            |#  
#|----------------------------------------------|#
nmtui

#|----------------------------------------------|#
#| 2) Change Hostname.                          |#
#|----------------------------------------------|#
sudo vim /etc/hostname

#|----------------------------------------------|#
#| 3) Configure Git Config.                     |#
#|----------------------------------------------|#
ln -s .gitconfig ~/.gitconfig

#|----------------------------------------------|#
#| 4) Update Package Manager.                   |#
#|----------------------------------------------|#
sudo pacman -Syu

#|----------------------------------------------|#
#| 5) Configure ZSH Shell and ohmyzsh.          |#
#|----------------------------------------------|#
sudo pacman -S zsh
chsh -s /usr/bin/zsh
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Restart session to apply changes.

#|----------------------------------------------|#
#| 6) Download Custom Configuration Repo.       |#
#|----------------------------------------------|#
cd ~/Documents
git clone https://www.github.com/KyleGough/config.git
cd config
rm ~/.vimrc
rm ~/.zshrc
ln -s .zshrc ~/.zshrc
ln -s .vimrc ~/.vimrc
touch ~/Documents/todo

#|----------------------------------------------|#
#| 7) Apply i3 config files.                    |# 
#|----------------------------------------------|#
rm ~/.i3/config
sudo rm /etc/i3status.conf 
ln -s i3/i3 ~/.i3/config
ln -s i3/i3status.conf /etc/i3status.conf
pacman -S py3status
pamac remove manjaro-i3-settings
pamac build i3-gaps-rounded-git
# Reload i3 with $mod+SHIFT+R

#|----------------------------------------------|#
#| 8) Neofetch.                                 |#
#|----------------------------------------------|#
sudo pacman -S neofetch
rm ~/.config/neofetch/config.conf
ln -s neofetch.conf ~/.config/neofetch/config.conf

#|----------------------------------------------|#
#| 9) mgitstatus.                               |#
#|----------------------------------------------|#
cd ~
mkdir .misc
cd .misc
git clone https://github.com/fboender/multi-git-status.git
cd multi-git-status
sudo ./install.sh

#|----------------------------------------------|#
#| 10) Load Custom Scripts and Aliases.         |#
#|----------------------------------------------|#
source ~/.zshrc
reload

#|----------------------------------------------|#
#| 11) urxvt Terminal Config.                   |#
#|----------------------------------------------|#
rm ~/.Xresources
ln -s .Xresources ~/.Xresources
xrdb ~/.Xresources

#|----------------------------------------------|#
#| 12) Compton.                                 |#
#|----------------------------------------------|#
rm ~/.config/compton.conf
ln -s compton.conf ~/.config/compton.conf

#|----------------------------------------------|#
#| 12) Redshift.                                |#
#|----------------------------------------------|#
sudo pacman -S redshift
cd ~/.config
mkdir redshift
ln -s redshift.conf ~/.config/redshift/redshift.conf

#|----------------------------------------------|#
#| 13) Install Applications/Packages.           |#
#|----------------------------------------------|#

# Browser.
sudo pacman -S firefox

# Markdown Editor.
pamac build typora

# Screenshots.
sudo pacman -S deepin-screenshot

# Notes.
pamac build simplenote-electron-bin

# Fancy Terminal
sudo pacman -S cool-retro-term

# Developer Tools
sudo pacman -S code
sudo pip install pipenv
pamac build drawio-desktop

# Audio
sudo pacman -S playerctl
sudo pacman -S pulseaudio
pamac build spotify

# Passwords
sudo pacman -S keepassxc

# Torrenting/Downloading
sudo pacman -S ffmpeg
pamac build youtube-dl
sudo pacman -S qbittorrent
mkdir ~/Downloads/torrents

# Games.
pamac build clonehero

# Virtualization.
# See: https://wiki.manjaro.org/index.php?title=VirtualBox
