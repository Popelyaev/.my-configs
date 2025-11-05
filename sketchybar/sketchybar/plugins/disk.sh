#!/bin/bash

FREE_DISK=$(df -h / | awk 'NR==2 {print $4}')

sketchybar --set $NAME label="$FREE_DISK"

