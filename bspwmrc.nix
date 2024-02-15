{ config, pkgs, ... }:
{
home.file.".config/bspwm/bspwmrc".text = '' 
! /usr/bin/env bash

#autostart
picom -f &
lxpolkit &
nitrogen --restore &
pgrep -x sxhkd > /dev/null || sxhkd &
#$HOME/.config/polybar/launch.sh

#BSPWM config

bspc monitor -d I II III IV V VI VII VIII IX X

bspc config border_width         2
bspc config window_gap          12

bspc config split_ratio          0.52
bspc config borderless_monocle   true
bspc config gapless_monocle      true

bspc rule -a Gimp desktop='^8' state=floating follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off
#Scratchpad ncspot
bspc rule -a Ncspot sticky=on state=floating center=true hidden=on
kitty --class Ncspot -e "ncspot" &  
#scratchpad terminal
bspc rule -a Dropdown sticky=on state=floating center=true hidden=on
kitty --class Dropdown -e "bash" &
#Scratchpad pcmanfm
bspc rule -a Pcmanfm sticky=on state=floating hidden=on
pcmanfm


'';

}