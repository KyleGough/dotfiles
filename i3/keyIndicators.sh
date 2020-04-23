i3status | while :
do
  read line
  capsLock="$(xset q | grep '00: Caps Lock:' | awk '{ print $4 }')"
  echo ${capsLock^^} || exit 1
done
