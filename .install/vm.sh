echo -e "${GREEN}"
figlet "VM tools"
echo -e "${GREEN}"

gum confirm "Would you like to install the Open VM Tools?"
if [ $? -eq 0 ]; then
	_installPackagePacman("open-vm-tools")
fi

gum confirm "Would you like to enable the tools?"
if [ $? -eq 0 ]; then
	sudo systemctl enable vmtoolsd.service
	sudo systemctl enable vmware-vmblock-fuse.service
fi
