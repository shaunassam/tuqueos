#!/usr/bin/bash

# Install required packages for tuqueOS image
dnf5 group install -y \
    gnome-desktop \
    workstation-product \
    fonts \
    workstation-ostree-support \
    system-tools \
    virtualization-headless \
    platform-vmware \
    multimedia \
    smb-server \
    guest-agents \
    guest-desktop-agents \
    core \
    domain-client \
    container-management

dnf5 install -y \
    chromium \
    gnome-tweaks \
    distrobox \
    vim-enhanced \
    samba \
    ntfs-3g \
    ntfsprogs \
    fuse-sshfs \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-submenu-power-toggle \
    gnome-shell-extension-desktop-icons-ng \
    plymouth \
    plymouth-system-theme \
    fwupd \
    ffmpeg-free \
    flac \
    faad2 \
    lame \
    libmad \
    vorbis-tools

# Remove unwanted packages
dnf5 remove -y firefox firefox-langpacks gnome-extensions-app

# Enable COPRs & install respective packages:
dnf5 -y copr enable sassam/tuqueOS
dnf5 -y install gnome-shell-extension-logo-menu
