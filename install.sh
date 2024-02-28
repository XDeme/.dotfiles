#!/usr/bin/bash

source "./install_scripts/utils.sh"

distro=$(distroname)
if [[ $distro = "arch" ]]; then
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm --needed tar
    sudo pacman -S --noconfirm --needed zsh wezterm egl-wayland
fi

sudo systemctl enable --now bluetooth.service
