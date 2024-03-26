#!/bin/bash
if [ ! -f /etc/pacman.conf ]; then echo "Looks like you are not using Arch (or based) Linux" ; exit 1; fi
grep materialgram /etc/pacman.conf || sudo sh -c "echo -e '[materialgram]\nSigLevel = Never\nServer = https://\$repo.github.io/arch' >> /etc/pacman.conf" && echo "Added materialgram's entry to pacman.conf"
sudo pacman -Sy

echo "Done !!"
echo "You can now install materialgram"
echo "pacman -S materialgram"
