#!/bin/sh

arg=$1
[ $arg = "up" ] && amixer sset Master playback  5%+
[ $arg = "down" ] && amixer sset Master playback 5%-
[ $arg = "mute" ] && amixer sset Master mute
[ $arg = "unmute" ] && amixer sset Master unmute

pkill -RTMIN+10 dwmblocks