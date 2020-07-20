#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

dunst &
exec i3
