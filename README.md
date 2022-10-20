<h1>Dotfiles</h1>

<p>Contains my personal dotfiles for configuring: zsh, vim, i3, redshift, urxvt, neofetch, dmenu, and libinput gestures. Below are setup steps for getting started in a fresh Manjaro i3 installation.</p>

## Screenshot
![2022-10-02-233323_1920x1080_scrot](https://user-images.githubusercontent.com/24881448/193479299-f641da95-7db2-4022-86a5-4ba44ea5c9bb.png)

## Table of Contents
- [Internet](#internet)
- [SSH Keys](#ssh-keys)
- [Git](#git)
- [Zsh](#zsh)
- [Vim](#vim)
- [Audio](#audio)
- [i3](#i3)
- [Custom Directories](#custom-directories)
- [Wallpapers](#wallpapers)
- [Xresources](#xresources)
- [Neofetch](#neofetch)
- [mgitstatus](#mgitstatus)
- [Redshift](#redshift)
- [Libinput Gestures](#libinput-gestures)
- [dmenu](#dmenu)
- [Python](#python)
- [Other Packages](#other-packages)
- [Installation Notes](#installation-notes)

## Internet

Connect to Wi-Fi
```sh
nmtui
```

## SSH keys

Generate a new SSH key
```sh
ssh-keygen -t ed25519 -C "email"
```

Start the ssh-agent in the background
```sh
eval "$(ssh-agent -s)"
```

Add SSH private key to the ssh-agent
```sh
ssh-add ~/.ssh/id_ed25519
```

Copy SSH public key and add to GitHub account
```sh
cat ~/.ssh/id_ed25519.pub
```

## Git

Configure git config
```sh
git config --global user.name "name"
git config --global user.email "email"
```

Clone dotfile repo
```sh
git clone git@github.com:KyleGough/dotfiles.git
```

## Zsh

Install zsh
```sh
sudo pacman -S zsh
chsh -s /usr/bin/zsh
# Reboot system
```

Install oh-my-zsh
```sh
cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install oh-my-zsh plugins
```sh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
git clone https://github.com/djui/alias-tips.git
```

Link zsh config
```sh
ln -f ~/Documents/dotfiles/.zshrc ~/.zshrc
```

## Vim
```sh
ln -f ~/Documents/dotfiles/.vimrc ~/.vimrc
```

## Audio

Install pulseaudio
```sh
sudo pacman -S pulseaudio
# Reboot system

sudo pacman -S pulseaudio-alsa
```

## i3
```sh
ln -f ~/Documents/dotfiles/i3/config ~/.i3/config
sudo ln -f ~/Documents/dotfiles/i3/i3status.conf /etc/i3status.conf
```

## Custom Directories
```sh
mkdir ~/Downloads/mnt
mkdir ~/Pictures/neofetch
mkdir ~/Pictures/wallpapers
```

## Wallpapers

Set the desktop wallpaper
```sh
nitrogen ~/Pictures/wallpapers/
```

Set the login wallpaper
```sh
sudo mv wallpaper.png /usr/share/backgrounds/
sudo lightdm-settings
```

## Xresources
```sh
xrdb -merge ~/Documents/dotfiles/.Xresources
```

## Neofetch
```sh
sudo pacman -S neofetch
ln -f ~/Documents/neofetch.conf ~/.config/neofetch/config.conf
```

## mgitstatus
```sh
cd
mkdir .misc
cd .misc
git clone https://github.com/fboender/multi-git-status.git
cd multi-git-status
sudo pacman -S make
sudo make install
```

## Redshift
```sh
sudo pacman -S redshift
mkdir ~/.config/redshift
ln -f ~/Documents/dotfiles/redshift.conf ~/.config/redshift/redshift.conf
```

## Libinput Gestures
```sh
sudo pacman -S libinput-gestures
sudo gpasswd -a $USER input
ln ~/Documents/dotfiles/libinput-gestures.conf ~/.config/libinput-gestures.conf
libinput-gestures-setup autostart start
```

## dmenu
```sh
ln -f ~/Documents/dotfiles/.dmenurc ~/.dmenurc
```

## Python
```sh
sudo pacman -S python-pip
pip install virtualenv
```

## Other Packages
```sh
sudo pacman -S feh
sudo pacman -S ffmpeg
sudo pacman -S firefox
sudo pacman -S npm
sudo pacmon -S playerctl
sudo pacman -S python-pip
sudo pacman -S qbittorrent
pamac install spotify
sudo pacman -S unrar
sudo pacman -S unzip
sudo pacman -S vlc
sudo pacman -S youtube-dl
```

-----

## Installation Notes
- Latest install: `Manjaro 21.3.7`
- Ventoy USB bootable with GPT partitioning
- Use Dedicated Drivers
- dotfiles repo should be placed in `~/Documents` directory
