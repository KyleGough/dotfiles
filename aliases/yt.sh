#!/usr/bin/zsh

alias yt-audio='youtube-dl -x -f bestaudio --no-playlist'
alias yt-metadata='youtube-dl -qse --get-title --get-duration --get-description --no-playlist'
alias yt-external='youtube-dl --external-downloader axel --external-downloader-args "-n 10 -a"'
alias yt-video='youtube-dl -f best --no-playlist'
alias yt-video-cookies='youtube-dl -f best --no-playlist --cookies'
