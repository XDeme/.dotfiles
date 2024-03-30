#!/usr/bin/bash

source "./install_scripts/utils.sh"

source "./install_scripts/core.sh"
source "./install_scripts/terminal.sh"
source "./install_scripts/programming.sh"

sudo systemctl enable --now bluetooth.service
