#!/bin/sh

mkfs.ext4 /dev/sda2
mkswap /dev/sda1
mount /dev/sda2 /mnt
swapon /dev/sda1
pacstrap /mnt base linux linux-firmware git neovim tmux networkmanager man-db man-pages grub sudo
genfstab -U /mnt >> /mnt/etc/fstab

echo Now you can chroot with:
echo arch-chroot /mnt
