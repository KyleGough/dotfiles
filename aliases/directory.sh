#!/usr/bin/zsh

alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias /='cd /'
alias ~='cd ~'
alias mkdir='mkdir -pv'
mkcd() { mkdir -p $1 &&  cd $_ }
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias untar='tar -xvf'
alias dush='du -sh -- *'
alias lsdir='ls -aldh */'
alias count-files='find . -type f | wc -l'
alias find-dupes='find . -type f -exec md5sum "{}" ";" | sort | uniq --all-repeated=separate -w 15 > dupes.txt'
