FROM archlinux:latest

USER root

RUN pacman -Syu --noconfirm --needed sudo reflector

RUN reflector --verbose -n 5 -p https --country Brazil --sort rate --save /etc/pacman.d/mirrorlist

RUN groupadd sudo; useradd --create-home --groups sudo --shell /usr/bin/bash fernando && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers; echo ''

WORKDIR /home/fernando/app

COPY . .

USER fernando

RUN sudo chown --recursive fernando /home/fernando/app

CMD ["bash", "install.sh"]
