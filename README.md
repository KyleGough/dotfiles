
## Internet

Connect to Wi-Fi
```
nmtui
```

## SSH keys

Generate a new SSH key
```
ssh-keygen -t ed25519 -C "email"
```

Start the ssh-agent in the background
```
eval "$(ssh-agent -s)"
```

Add SSH private key to the ssh-agent
```
ssh-add ~/.ssh/id_ed25519
```

Copy SSH public key and add to GitHub account
```
cat ~/.ssh/id_ed25519.pub
```

## Git

Configure git config
```
git config --global user.name "name"
git config --global user.email "email"
```

Clone dotfile repo
```
git clone git@github.com:KyleGough/dotfiles.git
```


## Setting up zsh

Install zsh
```
sudo pacman -S zsh
chsh -s /usr/bin/zsh
# Reboot system
```

Install oh-my-zsh
```
cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install oh-my-zsh plugins
```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
git clone https://github.com/djui/alias-tips.git
```

## 2

Link zsh config
```
ln -f ~/Documents/dotfiles/.zshrc ~/.zshrc
```

Link vim config
```
ln -f ~/Documents/dotfiles/.vimrc ~/.vimrc
```

## Audio

Install pulseaudio
```
sudo pacman -S pulseaudio
# Reboot system
```


## Custom files and directories.
```
mkdir ~/Downloads/mnt
mkdir ~/Pictures/neofetch
mkdir ~/Pictures/wallpapers
```


## Wallpapers

Set the desktop wallpaper
```
nitrogen ~/Pictures/wallpapers/

```

Set the login wallpaper
```
sudo mv wallpaper.png /usr/share/backgrounds/
sudo lightdm-settings
```

## Other packages.

neofetch
```
sudo pacman -S neofetch
```

Link neofetch config
```
ln -f ~/Documents/neofetch.conf ~/.config/neofetch/config.conf
```


mgitstatus
```
cd
mkdir .misc
cd .misc
git clone https://github.com/fboender/multi-git-status.git
cd multi-git-status
sudo pacman -S make
sudo make install
```

```
sudo pacman -S firefox
sudo pacman -S feh
sudo pacman -S ffmpeg
sudo pacmon -S playerctl
sudo pacman -S youtube-dl
sudo pacman -S qbittorrent
sudo pacman -S unrar
sudo pacman -S vlc
```



## Redshift

```
sudo pacman -S redshift
mkdir ~/.config/redshift
ln -f ~/Documents/dotfiles/redshift.conf ~/.config/redshift/redshift.conf
```

## X

```
xrdb -merge ~/Documents/dotfiles/.Xresources
```
