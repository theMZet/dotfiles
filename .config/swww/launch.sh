#!/bin/bash


swww-daemon > /dev/zero 2> /dev/zero &
sleep 0.1

swww img ~/wallpapers/$1
