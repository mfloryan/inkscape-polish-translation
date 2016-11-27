#!/bin/bash

cd /inkscape

if [ -f /inskcape/source/.bzr ]; then
	echo "Inkscape source code already exists - updating"
	cd source
	bzr update
else
	echo "Getting inkscape source code"
	bzr checkout --lightweight lp:inkscape/0.92.x source
fi

mkdir -p build
cd build

echo "* Preparing Inkscape build system"
cmake ../source

echo "* Building Inkscape from source"
make

echo "* Installing inkscape"
make install