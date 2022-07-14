#!/bin/bash
set -e

wget https://secure.nic.cz/files/knot-resolver/knot-resolver-release.deb
dpkg -i knot-resolver-release.deb
apt update
apt install -y knot-resolver knot-dnsutils
#systemctl disable systemd-resolved
#systemctl stop systemd-resolved
#systemctl enable --now kresd@{1..2}.service

