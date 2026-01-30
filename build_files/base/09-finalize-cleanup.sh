#!/usr/bin/bash

#### Final configurations

# Add Flathub by default & remove Red Hat/Fedora flatpak repo
mkdir -p /etc/flatpak/remotes.d
curl --retry 3 -o /etc/flatpak/remotes.d/flathub.flatpakrepo "https://dl.flathub.org/repo/flathub.flatpakrepo"
flatpak remote-delete fedora
dnf5 remove -y gnome-extensions-app
yes "" | widevine-installer

# Add release background
# rsync -rvK /ctx/system_files/usr/share/backgrounds/ /usr/share/backgrounds/
# rsync -rvK /ctx/system_files/usr/share/backgrounds/f43/default/ /usr/share/backgrounds/f43/default/
# rsync -rvK /ctx/system_files/usr/share/gnome-background-properties/ /usr/share/gnome-background-properties/

systemctl enable smb nmb
# systemctl enable gdm.service
# systemctl enable firewalld.service
# systemctl enable fwupd.service

dnf5 clean all && rm -rf /var/cache/dnf