#!/bin/bash
version=$(cat .install/.version)
source .install/colors.sh

echo -e "${GREEN}"
cat <<"EOF"
     _       _    __ _ _           
  __| | ___ | |_ / _(_) | ___  ___ 
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
EOF
echo -e "${NONE}" 
echo "Version: $version"
echo "by Michele Satta"
echo ""

source .install/library.sh
source .install/required.sh
source .install/wallpaper.sh


gum confirm "Do you want to install the dotfiles?"

if [ $? -eq 0 ]; then
	source .install/yay.sh
	source .install/displaymanager.sh
	source .install/qtile.sh
	source .install/vm.sh
	source .install/wallpaper.sh
else
	echo ":: Nothing to do!"
fi
