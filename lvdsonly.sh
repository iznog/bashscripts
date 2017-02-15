#!/bin/bash

xrandr --output VGA1 --off --output HDMI1 --off
sleep 10
xrandr --output LVDS1 --auto
