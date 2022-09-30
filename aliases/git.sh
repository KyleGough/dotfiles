#!/usr/bin/zsh

alias log='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short --reverse'
alias diff='git diff'
alias repos='mgitstatus -c --no-upstream ~/Documents'
alias status='git status'
