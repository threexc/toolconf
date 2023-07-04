#!/bin/bash 
set -x

sudo dnf -y update
sudo dnf -y groupinstall "Development Tools"
sudo dnf install -y acpica-tools b4 bison boost boost-devel bzip2 \
    capnproto capnproto-devel ccache chrpath cinnamon cmake cpio cpp \
    dfu-util diffutils diffstat dwarves elfutils-devel file findutils \
    flex git git-email gawk gcc gcc-c++ gdb glib-devel glib2-devel \
    glibc-devel glibc-langpack-en golang gnutls-devel \
    gsettings-desktop-schemas-devel gzip hostname htop iproute-tc \
    kernel-headers libguestfs libuuid-devel libproxy-devel lz4 make \
    mesa-libGL-devel meson nasm ncurses-devel ninja-build \
    openssl-devel patch perl perl-bignum perl-Data-Dump \
    perl-FindBin perl-File-Compare perl-File-Copy perl-locale \
    perl-Text-ParseWords perl-Thread-Queue pixman-devel \
    python3 python3-GitPython python3-jinja2 python3-pexpect \
    python3-pip rapidjson-devel rpcgen SDL-devel sqlite-devel \
    socat swig tar texinfo thunderbird tmux unzip vim-enhanced wget \
    which xz zstd

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

