#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
MONITORS=$(xrandr --query | grep " primary" | cut -d" " -f1)

MONITORS=$MONITORS polybar main;
#MONITOR=$MONITORS polybar bottom;

echo "Bars launched..."
