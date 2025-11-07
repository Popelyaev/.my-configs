#!/bin/bash

if [ "$SENDER" = "space_windows_change" ]; then
	space="$(echo "$INFO" | jq -r '.space')"
	apps="$(echo "$INFO" | jq -r '.apps | keys[]')"

	icon_strip=""
	if [ -n "$apps" ]; then
		while read -r app; do
			icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
			if [ -n "$icon_strip" ]; then
				icon_strip+=" $icon" # добавляем пробел только если уже что-то есть
			else
				icon_strip+="$icon"
			fi
		done <<<"$apps"
	else
		icon_strip="-"
	fi
	if [ "$space" -ge 1 ]; then
		sketchybar --set space.$space label="$icon_strip"
	fi
fi
