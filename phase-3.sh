systemctl enable NetworkManager
ln -sf /usr/share/zoneinfo/America/Toronto /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "archbox" > /etc/hostname
echo "127.0.0.1        localhost" > /etc/hosts
echo "::1              localhost" >> /etc/hosts
echo "127.0.1.1        archbox" >> /etc/hosts
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m -G wheel 
echo :::
echo "Now set the root password, user password, and visudo thing!"
