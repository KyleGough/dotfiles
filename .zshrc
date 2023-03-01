#----------------------------------------------------------------------------------#
#                                        zsh.                                      # 
#----------------------------------------------------------------------------------#

export PATH=$HOME/bin:/usr/local/bin:$PATH   # Path.
export ZSH="/home/kyle/.oh-my-zsh"           # Oh My ZSH location. 
export EDITOR=vim                            # Default Editor.
ZSH_THEME="agnoster"                         # ZSH Theme.
HIST_STAMPS="dd.mm.yyyy"                     # History command timestamps.
COMPLETION_WAITING_DOTS="true"               # Red dots whilst waiting for completion.
ENABLE_CORRECTION="true"                     # Command auto-correction.

# ZSH plugins
plugins=(git alias-tips extract fancy-ctrl-z node npm sudo vscode zsh-autosuggestions alias-finder colored-man-pages docker python themes frontend-search copyfile)

# Custom variables
DOTFILES_PATH="$HOME/Documents/dotfiles"
DISTRO_ID="$(cat /etc/*-release | grep 'DISTRIB_ID' | cut -d '=' -f2)"
UBUNTU_DISK_PARTITION="/dev/nvme0n1p4"
MANJARO_DISK_PARTITION="/dev/nvme0n1p2"
EMAIL="kylegough98@gmail.com"
GPG_EMAIL="$EMAIL"
MOUNT_PATH="$HOME/Downloads/mnt"
CLONEHERO_PATH="$HOME/Downloads/clonehero-linux/clonehero"

# Custom Aliases
for f in $DOTFILES_PATH/aliases/*; do source $f; done

# Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Display neofetch
neofetch

# Display Git repo statuses
repos="$(mgitstatus -c --no-upstream -d 1 ~/Documents)"
num_repos="$(echo $repos | wc -l)"
esc=$(printf '\033')
echo "     ${esc}[1m${esc}[95mGit Repositories${esc}[0m${esc}[0m (${esc}[94m$num_repos${esc}[0m)"
echo "     ----------------"
repos=$(repos | sort | sed -e 's/^\/home\/kyle\/Documents\//     /')
echo $repos
echo
