#!/bin/bash -e

install -v -m 644 files/dhcpcd.conf		"${ROOTFS_DIR}/etc/dhcpcd.conf"
install -v -m 644 files/dnsmasq.conf		"${ROOTFS_DIR}/etc/dnsmasq.conf"

install -v -d					"${ROOTFS_DIR}/etc/hostapd"
install -v -m 600 files/hostapd.conf		"${ROOTFS_DIR}/etc/hostapd/hostapd.conf"

echo 'DAEMON_CONF="/etc/hostapd/hostapd.conf"'	>> "${ROOTFS_DIR}/etc/default/hostapd"
echo 'net.ipv4.ip_forward=1'			>> "${ROOTFS_DIR}/etc/sysctl.conf"

on_chroot <<EOF
systemctl unmask hostapd
systemctl enable hostapd
EOF
