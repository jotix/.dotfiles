#!/usr/bin/env bash

### steam
flatpak install com.valvesoftware.Steam

### minion
flatpak install gg.minion.Minion

### filesystems override
flatpak override --filesystem=/mnt/jtx-ssd com.valvesoftware.Steam --user
flatpak override --filesystem=/mnt/jtx-ssd gg.minion.Minion --user
if [[ -b "/dev/disk/by-label/jtx-nvme" ]]; then
    flatpak override --filesystem=/mnt/jtx-nvme com.valvesoftware.Steam --user
    flatpak override --filesystem=/mnt/jtx-nvme gg.minion.Minion --user
fi
