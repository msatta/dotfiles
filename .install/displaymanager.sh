#!/bin/bash
echo -e "${GREEN}"
figlet "Display Manager"
echo -e "${NONE}"

yay -S --noconfirm sddm-git sddm-sugar-candy-git sddm-sugar-dark --ask 4

sudo systemctl enable sddm.service

if [ ! -d /etc/sddm.conf.d ]; then
	sudo mkdir /etc/sddm.conf.d
	echo "Folder /etc/ssdm.conf.d created."
fi

sudo cp ssdm/ssdm.conf /etc/ssdm.conf.d/
echo "File /etc/ssdm.conf.d/ssdm.conf updated."

