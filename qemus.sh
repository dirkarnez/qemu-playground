#!/bin/bash

echo "User: $(whoami) UID: $(id -u) GID: $(id -g)"
docker run -it --rm --name qemu -e "BOOT=mint" -p 8006:8006 --device=/dev/kvm --device=/dev/net/tun --cap-add NET_ADMIN -v "${PWD:-.}/qemu:/storage" --stop-timeout 120 docker.io/qemux/qemu
