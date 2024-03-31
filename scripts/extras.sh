#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    yay -S --noconfirm --needed neovim-git
    sudo pacman -S --noconfirm --needed neovide
fi

ln -sdf .config/nvim ~/.config/nvim
