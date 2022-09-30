#!/usr/bin/zsh

alias password='openssl rand -base64 16'
alias clear-history-bash='cat /dev/null > ~/.bash_history && history -c && exit'
alias clear-history-zsh='cat /dev/null > ~/.zsh_history && history -c && exit'
alias other-open='encfs ${FOLDER_HIDDEN} ${FOLDER_SHOWN}'
alias other-close='fusermount -u ${FOLDER_SHOWN}'
alias purge='clear && clear-history-zsh'
