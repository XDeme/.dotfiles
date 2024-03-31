#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    sudo pacman -S --noconfirm --needed wezterm tmux zsh

    # zsh extensions
    sudo pacman -S --noconfirm --needed zsh-autosuggestions zsh-completions zsh-syntax-highlighting
    yay -S --noconfirm --needed zsh-theme-powerlevel10k

    chsh --shell /usr/bin/zsh
fi

cp .zprofile ~/.zprofile
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

ln -sf .wezterm.lua ~/.wezterm.lua

zsh
