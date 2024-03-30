#!/usr/bin/bash

distro=$(distroname)
if [[ $distro = "arch" ]]; then
    sudo pacman -S --noconfirm --needed wezterm zsh zsh-theme-powerlevel10k zsh-autosuggestions zsh-completions zsh-syntax-highlighting
    chsh --shell /usr/bin/zsh
fi
