#!/bin/bash
echo "Downloading Real Bodhi ISO..."
wget -q --show-progress -O WinDroid-Lite.iso https://ftp.lysator.liu.se/pub/bodhi/7.0.0/bodhi-7.0.0-64.iso
echo "Done!"
ls -lh WinDroid-Lite.iso
