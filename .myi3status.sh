#!/bin/sh
# ~/.myi3status.sh

i3status | while :
do
    read line
    song=$(cat /tmp/song.txt | sed -r "s/[|]+/-/g" | cut -c -35)
    echo "♪ $song | $line" || exit 1
done
