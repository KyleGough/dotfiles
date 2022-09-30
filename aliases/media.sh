#!/usr/bin/zsh

alias song='playerctl metadata --format "Now playing: {{ artist }} - {{ album }} - {{ title }}"'
alias next='playerctl next && sleep 1 && song'
alias previous='playerctl previous && sleep 1 && song'
alias pause='playerctl pause'
alias unpause='playerctl play'
