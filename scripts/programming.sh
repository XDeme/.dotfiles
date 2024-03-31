#!/usr/bin/bash

distro=$(distroname)

if [[ $distro = "arch" ]]; then
    sudo pacman -S --noconfirm --needed gcc clang gdb lldb lld

    sudo pacman -S --noconfirm --needed jdk17-openjdk jdk-openjdk python go php php-sqlite php-fpm

    sudo pacman -S --noconfirm --needed sqlite mariadb

    sudo pacman -S --noconfirm --needed cmake gradle maven

    yay -S --noconfirm --needed nvm
    yay -S --noconfirm --needed visual-studio-code-bin
    yay -S --noconfirm --needed nvim

    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

    sudo archlinux-java set java-17-openjdk
fi
