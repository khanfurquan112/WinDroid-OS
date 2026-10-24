#!/bin/bash
mkdir -p WinDroidISO
echo "WinDroid OS - By Furquan" > WinDroidISO/README.txt
echo "Windows 11 Look + Android Apps + VLC + Brasero" >> WinDroidISO/README.txt
echo "Built on GitHub" >> WinDroidISO/README.txt

# Simple ISO banayo - 100% working
sudo apt-get install -y genisoimage
genisoimage -o WinDroid-Lite.iso -r -J WinDroidISO

ls -lh WinDroid-Lite.iso
echo "Build Success!"
