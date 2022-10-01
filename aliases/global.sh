#!/usr/bin/zsh
#autoload -U compinit
#compinit

DOTFILES_PATH="/home/kyle/Documents/dotfiles"
DISTRO_ID="$(cat /etc/*-release | grep 'DISTRIB_ID' | cut -d '=' -f2)"
UBUNTU_DISK_PARTITION="/dev/nvme0n1p4"
MANJARO_DISK_PARTITION="/dev/nvme0n1p2"
EMAIL="kylegough98@gmail.com"
GPG_EMAIL="${EMAIL}"
MOUNT_PATH="/home/kyle/Downloads/mnt"

source $DOTFILES_PATH/aliases/clipboard.sh
source $DOTFILES_PATH/aliases/directory.sh
source $DOTFILES_PATH/aliases/docs.sh
source $DOTFILES_PATH/aliases/git.sh
source $DOTFILES_PATH/aliases/gpg.sh
source $DOTFILES_PATH/aliases/image.sh
source $DOTFILES_PATH/aliases/lock.sh
source $DOTFILES_PATH/aliases/media.sh
source $DOTFILES_PATH/aliases/misc.sh
source $DOTFILES_PATH/aliases/mount.sh
source $DOTFILES_PATH/aliases/nightshift.sh
source $DOTFILES_PATH/aliases/package.sh
source $DOTFILES_PATH/aliases/rename.sh
source $DOTFILES_PATH/aliases/rng.sh
source $DOTFILES_PATH/aliases/security.sh
source $DOTFILES_PATH/aliases/shortcut.sh
source $DOTFILES_PATH/aliases/shutdown.sh
source $DOTFILES_PATH/aliases/suffix.sh
source $DOTFILES_PATH/aliases/system.sh
source $DOTFILES_PATH/aliases/terminal.sh
source $DOTFILES_PATH/aliases/video.sh
source $DOTFILES_PATH/aliases/web.sh
source $DOTFILES_PATH/aliases/yt.sh
