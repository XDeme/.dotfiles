#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    echo "Current user: $USER"
    sudo pacman -S --noconfirm --needed tar zip unzip

    sudo pacman -S --noconfirm --needed git tk github-cli

    sudo pacman -S --noconfirm --needed jq curl wget nginx openssh

    sudo pacman -S --noconfirm --needed fcitx5 fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-configtool

    sudo pacman -S --noconfirm --needed git base-devel && git clone https://aur.archlinux.org/yay.git && \
        cd yay && makepkg --noconfirm -si && cd - && rm -rf yay
fi
