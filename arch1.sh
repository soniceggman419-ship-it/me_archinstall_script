mkfs.fat -F 32 /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3
mount /dev/sda3 /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
swapon /dev/sda2
reflector --latest 5 --country US --protocol http,https rate --save /etc/pacman.d/mirrorlist
pacstrap -K /mnt base linux linux-firmware pacman base-devel networkmanager curl vim reflector vi grub efibootmgr
genfstab -U /mnt >> /mnt/etc/fstab
