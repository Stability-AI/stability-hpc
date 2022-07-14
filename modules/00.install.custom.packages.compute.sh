#!/bin/bash
set -e

apt update
apt install software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt install -y build-essentials
apt install -y autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev
apt install -y python3.9 wget tmux glances htop hwloc iftop numactl python3.9-dev check subunit
