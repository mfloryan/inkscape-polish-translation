# Start XServer with a virtual framebuffer
Xvfb -screen 0 2560x1440x32 -ac &

# Start X11VNC as the actual screen
x11vnc -display :0

# Run inkscape using the created display
DISPLAY=:0 inkscape -p