#! /bin/bash

theme="simpleBlack"
dir="$HOME/.config/rofi"

rofi \
-location 1 \
-yoffset 23 \
-xoffset 2 \
-no-lazy-grab -show drun \
-modi run,drun,window,ssh \
-theme $dir/"$theme"
