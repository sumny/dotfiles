#!/bin/sh
# /usr/local/bin/screen_rotation.sh

rotation="$(xrandr -q --verbose | grep 'connected' | egrep -o  '\) (normal|left|inverted|right) \(' | egrep -o '(normal|left|inverted|right)')"

case "$rotation" in
    normal)
    xrandr -o inverted
    ;;
    inverted)
    xrandr -o normal
    ;;
esac
