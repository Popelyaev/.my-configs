#!/bin/bash
VPN_IP=$(curl -s ipinfo.io/ip)
VPN_COUNTRY=$(curl -s ipinfo.io/country)
# Проверяем, есть ли активные интерфейсы VPN (обычно начинаются с utun)
if ifconfig | grep -q "utun4"; then
    sketchybar --set vpn icon="󰇧" label="$VPN_COUNTRY $VPN_IP"
else
    sketchybar --set vpn icon="󰇨" label="-.-.-.-"
fi
