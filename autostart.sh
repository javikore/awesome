#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --offru
run xrandr --output DP-1 --off --output HDMI-2 --mode 1680x1050 --pos 0x0 --rotate normal --output DVI-I-1 --mode 1600x900 --pos 1680x0 --rotate normal --output DVI-I-2 --off --output VGA-1-1 --off --output HDMI-1-1 --off
#autorandr horizontal
run nm-applet
#run caffeine
run variety
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
run picom 
#run nitrogen --restore
#you can set wallpapers in themes as well
run variety 
#run applications from startup
#run firefox
#run atom
#run dropbox
#run insync start
#run spotify
#run ckb-next -b
#run discord
#run telegram-desktop
