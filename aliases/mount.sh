#!/usr/bin/zsh

alias mount-ubuntu='sudo mount ${UBUNTU_DISK_PARTITION} /mnt-ubuntu && cd /mnt-ubuntu'
alias unmount-ubuntu='cd ~ && sudo umount ${UBUNTU_DISK_PARTITION}'
alias mount-sda='sudo mount /dev/sda1 ${MOUNT_PATH}'
alias mount-sdb='sudo mount /dev/sdb1 ${MOUNT_PATH}'
alias umount-sda='sudo umount /dev/sda1'
alias umount-sdb='sudo umount /dev/sdb1'
alias dfl="df -h --output=source,used,size,target | grep ^'/dev/' | grep -v '/boot/' | awk 'BEGIN { OFS=\"\t\" } {print \$1, FS, \$2 \" / \" \$3}'"
alias mnt='cd ${MOUNT_PATH}'
