#!/bin/bash 
set -x

sudo dnf -y update
sudo dnf -y groupinstall "Development Tools"
sudo dnf install -y cinnamon vim-enhanced dwarves tmux dfu-util kernel-headers htop git \
    golang iproute-tc ninja-build cmake gcc-c++ libuuid-devel nasm acpica-tools flex \
    bison openssl-devel elfutils-devel gdb b4 cmake capnproto capnproto-devel sqlite-devel \
    boost boost-devel rapidjson-devel
mkdir -p ~/git
cd ~/git/
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

set +x
read -p "Set hostname? " yn
case $yn in
    [Yy]* )
        read -p "Enter hostname: " newhostname
	sudo hostnamectl set-hostname $newhostname
	;;
    [Nn]* )
	echo "Leaving hostname as \"$(hostname)\""
	;;
esac

read -p "Reboot? " yn
case $yn in
    [Yy]* )
	echo "Rebooting."
	sudo reboot
        ;;
    [Nn]* )
	echo "Skipping reboot."
	;;
esac
set -x

