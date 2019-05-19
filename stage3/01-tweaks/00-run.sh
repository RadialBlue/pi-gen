#!/bin/bash -e

rm -f "${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/wait.conf"

echo "dwc2"	>> "${ROOTFS_DIR}/etc/modules"
echo "g_ether"	>> "${ROOTFS_DIR}/etc/modules"
