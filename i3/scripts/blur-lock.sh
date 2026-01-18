#!/bin/sh

# PIC=/tmp/i3lock.png

rm /tmp/i3lock.png

scrot /tmp/i3lock.png

convert /tmp/i3lock.png -blur 10x5 /tmp/i3lock.png

# mogrify -scale 10% -scale 1000% /tmp/i3lock.png

i3lock --nofork -i /tmp/i3lock.png


# sleep 60; pgrep i3lock && xset dpms force off
