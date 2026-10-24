#!/bin/bash
mkdir -p WinDroid && cd WinDroid
lb config --distribution jammy --binary-images iso --mode ubuntu --architectures amd64 --linux-flavours generic --debian-installer live

# Yaha tera Windows 11 wala look add hoga
echo "xfce4 vlc brasero plank" > config/package-lists/windroid.list.chroot
echo "deb http://archive.ubuntu.com/ubuntu jammy main universe" > config/archives/ubuntu.list.chroot

sudo lb build

mv live-image-amd64.hybrid.iso ../WinDroid-Lite.iso
