#!/bin/bash

pkill waybar

THEME="${1:-default}"


waybar -c $HOME/.config/waybar/$THEME.jsonc -s $HOME/.config/waybar/$THEME.css > /dev/zero &
