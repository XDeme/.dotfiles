#!/usr/bin/bash

source "./install_scripts/utils.sh"

source "./install_scripts/basic.sh"
source "./install_scripts/terminal.sh"

sudo systemctl enable --now bluetooth.service
