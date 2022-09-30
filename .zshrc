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

# ZSH Plugins.
plugins=(git alias-tips extract fancy-ctrl-z node npm sudo vscode zsh-autosuggestions alias-finder colored-man-pages docker python themes frontend-search copyfile)

# Config Repository Location.
DOTFILES_PATH="/home/kyle/Documents/dotfiles"

source $DOTFILES_PATH/aliases/global.sh      # Custom aliases.
source $ZSH/oh-my-zsh.sh                     # Oh My ZSH.

#----------------------------------------------------------------------------------#
#                              Custom Startup Display.                             # 
#----------------------------------------------------------------------------------#

# Displays neofetch.
neofetch

# Displays useful commands and todo list.
python $DOTFILES_PATH/startup.py
echo ""

# Displays Git repo statuses.
repos="$(mgitstatus -c --no-upstream ~/Documents)"
num_repos="$(echo $repos | wc -l)"

# Prints Repo List Header.
esc=$(printf '\033')
echo "     ${esc}[95mGit Repositories\033[0m (${esc}[94m$num_repos${esc}[0m)"
echo "     ----------------"

# Prints Repositories.
repos=$(repos | sort | sed -e 's/^\/home\/kyle\/Documents\//     /')
echo $repos
echo ""

cd ~/Documents
