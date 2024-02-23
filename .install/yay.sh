
# ------------------------------------
# Check if yay is installed
# ------------------------------------
echo -e "${GREEN}"
figlet "yay"
echo -e "${NONE}"
if sudo pacman -Qs yay > /dev/null ; then
	echo ":: yay is already installed!"
else
	echo ":: yay is not installed. Starting the installation!"

fi
echo ""
