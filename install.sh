#!/usr/bin/bash

source "./scripts/utils.sh"

source "./scripts/core.sh"
source "./scripts/programming.sh"
source "./scripts/terminal.sh"
source "./scripts/extras.sh"

source .zprofile

cp .zprofile ~/.zprofile
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

cp .config/wezterm/wezterm.lua $XDG_CONFIG_HOME/wezterm/wezterm.lua

zsh
