#!/usr/bin/bash

source "./scripts/utils.sh"

source .zshenv

source "./scripts/core.sh"
source "./scripts/terminal.sh"

source "./scripts/programming.sh"
source "./scripts/extras.sh"

cp .zshenv $HOME/.zshenv
cp --recursive .config/ $XDG_CONFIG_HOME/..

zsh