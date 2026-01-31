#!/usr/bin/bash

# Install required packages for tuqueOS image if using Fedora bootc
dnf5 group install -y \
    gnome-desktop \
    workstation-product \
    workstation-product-environment \
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
    firefox \
    firefox-langpacks \
    mozilla-openh264 \
    thunderbird \
    gnome-tweaks \
    distrobox \
    vim-enhanced \
    samba \
    ntfs-3g \
    ntfsprogs \
    fuse-sshfs \
    flatpak \
    gnome-calendar \
    gnome-text-editor \
    gnome-weather \
    papers \
    gnome-maps \
    gnome-calculator \
    snapshot \
    gnome-characters \
    gnome-clocks \
    gnome-connections \
    gnome-contacts \
    loupe \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-logo-menu \
    gnome-shell-extension-desktop-icons-ng \
    gnome-shell-extension-submenu-power-toggle \
    vlc \
    vlc-plugins-all \
    rhythmbox \
    ffmpeg-free \
    flac \
    faad2 \
    lame \
    libmad \
    vorbis-tools \
    gnome-chess \
    widevine-installer

# Remove unwanted packages
dnf5 remove -y gnome-extensions-app

# Enable COPRs & install respective packages:
dnf5 -y copr enable sassam/tuqueOS
dnf5 -y install gnome-shell-extension-logo-menu \
    gnome-shell-extension-submenu-power-toggle \
    gnome-shell-extension-desktop-icons-ng
