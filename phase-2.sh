#!/bin/sh

mkfs.ext4 /dev/$12
mkswap /dev/$11
mount /dev/$12 /mnt
swapon /dev/$11
pacstrap /mnt base linux linux-firmware git neovim tmux networkmanager man-db man-pages
genfstab -U /mnt >> /mnt/etc/fstab

echo Now you can chroot with:
echo arch-chroot /mnt
