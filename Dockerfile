FROM archlinux:latest

USER root

RUN pacman -Syu --noconfirm --needed sudo reflector

WORKDIR /home/app

COPY . .

USER fernando

RUN sudo chown --recursive fernando /home/app

CMD ["bash", "install.sh"]