#!/bin/bash

## Installation de paquet linux
apt-get install sudo vim screen net-tools htop strace ltrace wireshark build-essential cmake chromium gedit emacs

## Élévation des privilèges sans mot de passe. Ajouter dans le fichier /etc/sudoers la ligne suivante :
chmod 644 /etc/sudoers
cat <<EOF >> /etc/sudoers
user	ALL=(ALL) NOPASSWD: ALL
EOF
chmod 444 /etc/sudoers

## Activer la connexion automatique au bureau dans Debian 9 Xfce. Éditer le fichier /usr/share/lightdm/lightdm.conf.d/01_debian.conf. Ajouter les lignes suivantes :
cat <<EOF >> /usr/share/lightdm/lightdm.conf.d/01_debian.conf
[SeatDefaults]
autologin-user=username
autologin-user-timeout=0
EOF

## Automatic login to virtual console
# /etc/systemd/system/getty@tty1.service.d/getty@tty1.service
# [Service]
# ExecStart=-/usr/bin/agetty --autologin username --noclear %I $TERM
