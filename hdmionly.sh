#!/bin/bash

xrandr --output DP1 --off
sleep 1
xrandr --output eDP1 --off
sleep 1
xrandr --output HDMI1 --auto
