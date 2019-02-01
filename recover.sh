# Load spanish layout
loadkeys es

# Know disk partitions
fdisk -l

mkdir /mnt/root
mount /dev/sdc6 /mnt/root

# Mount EFI pertition in boot
mount /dev/sdc2 /mnt/root/boot

# Mount Home
mount /dev/sda2 /mnt/root/home

# Connect internet in LiveCD
wifi-menu

# CHROOT
arch-chroot /mnt/root

# Regenerate linux image
mkinitcpio -p linux
