#!/bin/bash

sketchybar --add item vpn right \
           --set vpn icon=󰖂 \
                       label.drawing=off \
                       script="$PLUGIN_DIR/vpn.sh" \
                       update_freq=5 \
                       drawing=off \
                       icon.color=0xff5ac8fa \
                       icon.font="SF Pro:Regular:16.0" 
