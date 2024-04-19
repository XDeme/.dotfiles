#!/usr/bin/bash

distro=$(distroname)

cp .zprofile ~/.zprofile
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

ln -rsf .wezterm.lua ~/.config/wezterm/wezterm.lua

zsh