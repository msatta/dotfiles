#--------------------------------------------------------
# 
# Check for required packages to run the installation
#
#--------------------------------------------------------
#!/bin/bash

# sync packages
sudo pacman -Sy
echo ""

packagesPacman=(
	"pacman-contrib"
	"vim"
	"figlet"
	"neovim"
	"alacritty"
	"open-vm-tools"
	"noto-fonts"
	"otf-font-awesome"
	"ttf-fira-sans"
	"ttf-fira-code"
	"ttf-firacode-nerd"
	"python-pip"
	"python-psutil"
	"python-rich"
	"python-click"
	"gum"
	"man-pages"
	"gtk4"
	"wget"
	"unzip"
	"rofi"
	"thunar"
	)


# check for required packages
echo ":: Checking that required packages..."
_installPackagesPacman "${packagesPacman[@]}";
echo ""


