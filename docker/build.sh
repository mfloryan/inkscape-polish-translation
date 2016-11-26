bzr checkout --lightweight lp:inkscape/0.92.x source

mkdir build
cd build
cmake ../source
make

#run     mkdir ~/.vnc
# Setup a password
#run     x11vnc -storepasswd 1234 ~/.vnc/passwd