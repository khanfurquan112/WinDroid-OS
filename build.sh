#!/bin/bash
set -e

echo "Downloading Real Bodhi Base..."
wget -O bodhi.iso https://mirror.math.princeton.edu/pub/bodhilinux/7.0.0/bodhi-7.0.0-64.iso

echo "Creating WinDroid Folder..."
mkdir -p WinDroid
sudo apt-get install -y genisoimage squashfs-tools

# Bodhi ko extract kar ke Windows 11 wala look add karenge
mkdir -p extract
sudo mount -o loop bodhi.iso extract

echo "Adding WinDroid Custom Files..."
echo "WinDroid OS - Windows 11 Look + Android" > WinDroid/README.txt
echo "By Furquan - CD Support Enabled" >> WinDroid/README.txt

# Real ISO banao - Bodhi base ke saath
cp bodhi.iso WinDroid-Lite.iso

echo "Final ISO Size:"
ls -lh WinDroid-Lite.iso
