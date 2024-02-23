#!/bin/bash
source color.sh
source library.sh

echo -e "${GREEN}"
figlet "Scala"
echo -e "${NONE}"

packagesPacman=(
     "ripgrep",
     "fd"
#    "scala",
#    "scala3",
#    "sbt"
);

packagesYay=(
    "coursier"
);

_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}"

coursier install scala3 scala3-compiler sbt scala:2.13.12 scalac:2.13.12

echo ""
