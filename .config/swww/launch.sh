#!/bin/bash


pkill swww-daemon

swww-daemon $
sleep 0.1

swww img ~/wallpapers/$1
