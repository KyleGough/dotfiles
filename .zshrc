#----------------------------------------------------------------------------------#
#                                        zsh.                                      # 
#----------------------------------------------------------------------------------#

export PATH=$HOME/bin:/usr/local/bin:$PATH   # Path.
export ZSH="/home/kyle/.oh-my-zsh"           # Oh My ZSH location.
ZSH_THEME="agnoster"                         # ZSH Theme.
HIST_STAMPS="dd.mm.yyyy"                     # History command timestamps.
COMPLETION_WAITING_DOTS="true"               # Red dots whilst waiting for completion.
source ~/Documents/config/aliases            # Custom aliases.

# ZSH Plugins.
plugins=(git alias-finder colored-man-pages docker python themes frontend-search copyfile)

source $ZSH/oh-my-zsh.sh                     # Oh My ZSH.

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#----------------------------------------------------------------------------------#
#                              Custom Startup Display.                             # 
#----------------------------------------------------------------------------------#

# Prints the ASCII art for my name.
echo ""
cat ~/Pictures/ascii/name.txt

# Displays neofetch.
neofetch --source ~/Pictures/ascii/goose.txt

# Displays useful commands and todo list.
python ~/Documents/config/startup.py

# Displays Git repo statuses.
echo "     \033[95mGit Repos\033[0m"
echo "     ---------------"
mgitstatus -c --no-upstream ~/Documents | sort | sed -e 's/^/     /'
echo ""
