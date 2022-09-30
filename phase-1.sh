timedatectl set-ntp true
lsblk

echo Now go partition the disk!
echo fdisk /dev/sdX
echo /dev/sdX1 = swap
echo /dev/sdX2 = rest
echo Then run phase-2.sh sdX
