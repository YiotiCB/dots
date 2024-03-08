#!/bin/sh
if wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3=="[MUTED]"}'; then
    brightnessctl -d platform::micmute s 1
else
    brightnessctl -d platform::micmute s 0
fi
#echo wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3=="[MUTED]"}'
#todo: fix/finish this
