#!/bin/bash

# Проверяем, есть ли активные интерфейсы VPN (обычно начинаются с utun)
if ifconfig | grep -q "utun[0-9]"; then
  sketchybar --set vpn icon=󰖂 drawing=on
else
    sketchybar --set vpn icon="🔴" label="VPN OFF"
fi
