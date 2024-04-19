#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    yay -S --noconfirm --needed neovim-git
    sudo pacman -S --noconfirm --needed neovide

    sudo pacman -S --noconfirm --needed jq bat ripgrep

    sudo pacman -S --noconfirm --needed yt-dlp

    sudo pacman -S --noconfirm --needed xorg-xauth
fi

ln -sdrf .config/nvim ~/.config/nvim
