#!/usr/bin/zsh

# Batch rename all files in a directory.
batch-rename() {
  if [ $# -eq 1 ]; then
    ls -1p | grep -v "/$" | cat -n | while read n f; do mv -ni "${f}" "$(printf "%s - %03d" $1 $n).${f#*.}"; done 
  elif [ $# -eq 2 ]; then
    ls -1p | grep -v "/$" | grep ^"$1" | cat -n | while read n f; do mv -ni "${f}" "$(printf "%s - %03d" $2 $n).${f#*.}"; done
  fi
}
