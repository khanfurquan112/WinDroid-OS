#!/bin/bash
echo "Downloading with curl..."

# SourceForge ko curl se download karna padega
curl -L -o WinDroid-Lite.iso https://sourceforge.net/projects/bodhilinux/files/7.0.0/bodhi-7.0.0-64.iso/download

echo "Checking size..."
ls -lh WinDroid-Lite.iso

# Agar phir bhi choti hai to dusra mirror try karega
SIZE=$(stat -c%s WinDroid-Lite.iso)
if [ $SIZE -lt 100000000 ]; then
  echo "First link failed, trying Princeton mirror..."
  curl -L -o WinDroid-Lite.iso https://mirror.math.princeton.edu/pub/bodhilinux/7.0.0/bodhi-7.0.0-64.iso
  ls -lh WinDroid-Lite.iso
fi
