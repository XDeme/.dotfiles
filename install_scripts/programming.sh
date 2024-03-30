#!/usr/bin/bash

distro=$(distroname)
if [[ $distro = "arch" ]]; then
    sudo pacman -S --noconfirm --needed gcc clang python
    sudo pacman -S --noconfirm --needed sqlite mariadb
fi
