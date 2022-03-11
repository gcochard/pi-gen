#!/bin/bash -e

install -m 644 files/unifi-repo.gpg "${ROOTFS_DIR}/etc/apt/trusted.gpg.d/"
install -m 644 files/raspbian_stretch_for_mongodb.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
install -m 644 files/100-ubnt-unifi.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
on_chroot << EOF
apt-get update
EOF
