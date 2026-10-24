#!/bin/bash
set -e
echo "Starting WinDroid Build..."

# Tools install
sudo apt-get update
sudo apt-get install -y squashfs-tools xorriso grub-pc-bin

# Ek dummy ISO banate hai jo boot hoga
mkdir -p iso/boot/grub
echo 'menuentry "WinDroid OS" { linux /boot/vmlinuz boot=live }' > iso/boot/grub/grub.cfg
echo "WinDroid OS by Furquan - Windows 11 Look" > iso/README.txt
echo "Files: VLC, Brasero, Chrome, Play Store" >> iso/README.txt

# ISO banayo
grub-mkrescue -o WinDroid-Lite.iso iso

echo "ISO Ban gaya! Size:"
ls -lh WinDroid-Lite.iso
