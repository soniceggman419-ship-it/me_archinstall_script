#!/usr/bin/bash
echo this script will setup arch linux 
useradd -m -G wheel,users elijah
echo the user name elijah wast just make on you system pending operation press crtl+c to stop this NOW
sleep 3
echo Enter the password for the root user
passwd
sleep 1
echo Enter the password for you user
passwd elijah
reflector --latest 5 --country US --protocol http,https rate --save /etc/pacman.d/mirrorlist
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
