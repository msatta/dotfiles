
echo -e "${GREEN}"
figlet "Qtile"
echo -e "${NONE}"

packagesPacman=(
	"qtile"
	"picom"
	"scrot"
	"slock"
	"xorg"
	"xorg-xinit"
	"nitrogen"
	"python-dbus-next"
	"python-iwlib"
	"xclip"
	"xautolock"
);

packagesYay=(
	"qtile-extras"
);

_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}"

echo ""
