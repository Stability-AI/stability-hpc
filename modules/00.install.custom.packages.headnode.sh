#!/bin/bash
set -e

apt update
apt install software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt install -y build-essentials
apt install -y autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev
apt install -y python3.9 python3.9-dev tmux htop glances aria2 transmission-cli

# optimize for large jobs
ifconfig eth0 txqueuelen 4096
sed -i -e '/MessageTimeout=/ s/=.*/=180/' /opt/slurm/etc/slurm.conf
