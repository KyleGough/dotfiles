
#!/bin/bash
capsLock="$(xset q | grep '00: Caps Lock:' | awk '{ print $4 }')"
if [ "$capsLock" == "on" ]
then
  echo "🔒"
else
  echo "🔓"
fi