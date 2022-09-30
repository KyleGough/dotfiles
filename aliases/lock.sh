#!/usr/bin/zsh

# Locks the screen according to the Linux distribution.
lock() {
  if [ $DISTRO_ID = 'Ubuntu' ]; then
    gnome-screensaver-command -l
  elif [ $DISTRO_ID = 'ManjaroLinux' ]; then
    blurlock
  else
    echo "==> No lock command for distribution"
  fi
}
