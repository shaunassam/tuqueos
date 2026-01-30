#!/usr/bin/bash

## Purpose of this script is to remove installed kernel and replace them
## with the kernel version used in Fedora CoreOS Stable. This avoids
## constant kernel updates in hopes tuqueOS distro maintains stability.

set -eoux pipefail

dnf5 remove -y \
    gnome-extensions-app

dnf5 install -y \
    @virtualization-headless \
    @multimedia \
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