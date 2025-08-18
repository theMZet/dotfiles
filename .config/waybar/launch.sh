#!/bin/bash

pkill waybar

waybar -c $HOME/.config/waybar/$1.jsonc -s $HOME/.config/waybar/$1.css > /dev/zero 2> /dev/zero &
