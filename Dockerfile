FROM archlinux

COPY . /app

WORKDIR /app

CMD ["ls", "-la"]
