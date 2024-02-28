#!/usr/bin/bash

function distroname() {
    if [ -f /etc/arch-release ]; then
        echo arch
        return
    fi
}
