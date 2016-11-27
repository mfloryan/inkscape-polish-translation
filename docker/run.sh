# Start XServer with a virtual framebuffer
Xvfb -screen 0 2560x1440x16 -ac &

# Start X11VNC as the actual screen
x11vnc -display :0 -usepw -forever &

DISPLAY=:0 openbox &

# Run inkscape using the created display
DISPLAY=:0 LANG=pl_PL.UTF-8 inkscape -g