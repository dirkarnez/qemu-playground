#!/bin/bash

echo "User: $(whoami) UID: $(id -u) GID: $(id -g)"

sudo apt install cpu-checker && \
sudo kvm-ok

docker compose up --build && docker compose down
