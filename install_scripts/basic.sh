#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    sudo pacman -S --noconfirm --needed jq tar zip curl wget git sqlite mariadb
    sudo pacman -S --noconfirm --needed python
    sudo pacman -S --noconfirm --needed fcitx5 fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-configtool
fi
