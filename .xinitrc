#!/usr/bin/env bash

pulseaudio --start &
nitrogen --restore &
picom &
xsetroot -cursor_name left_ptr &

xrdb ~/.Xresources

xmonad
