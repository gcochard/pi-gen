#!/bin/bash -e

cp files/unifi-repo.gpg ${ROOTFS_DIR}/etc/apt/trusted.gpg.d/unifi-repo.gpg
on_chroot << EOF
echo 'deb http://archive.raspbian.org/raspbian stretch main contrib non-free rpi' >> /etc/apt/sources.list.d/raspbian_stretch_for_mongodb.list
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' >> /etc/apt/sources.list.d/100-ubnt-unifi.list
EOF
