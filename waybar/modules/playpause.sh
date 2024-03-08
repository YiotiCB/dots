#!/bin/sh
player_status=$(playerctl -p spotify status 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
   playerctl -p spotify pause 
elif [ "$player_status" = "Paused" ]; then
   playerctl -p spotify play
fi
