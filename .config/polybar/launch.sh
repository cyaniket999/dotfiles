#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall polybar

# Launch polybar
#polybar main &

polybar center 2>&1 | tee -a /tmp/polybar1.log & disown
polybar left 2>&1 | tee -a /tmp/polybar1.log & disown
polybar right 2>&1 | tee -a /tmp/polybar1.log & disown
polybar tray 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
