#!/bin/bash -e

cd files/
wget http://nodejs.org/dist/latest-v11.x/node-v11.15.0-linux-armv6l.tar.gz

cd ../
tar -xvzf files/node-v11.15.0-linux-armv6l.tar.gz -C "${ROOTFS_DIR}/opt"
ln -sf node-v11.15.0-linux-armv6l "${ROOTFS_DIR}/opt/node"

