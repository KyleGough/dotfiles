i3status | while :
do
    read line
    capsLockLED="$(xset q | grep 'LED mask' | awk '{ print $NF }')"
    capsLockMask="00000002"

    if [ $capsLockLED == $capsLockMask ]
    then
      echo "ON"
    else
      echo "OFF"
    fi

    echo "OFF | $line" || exit 1
done
