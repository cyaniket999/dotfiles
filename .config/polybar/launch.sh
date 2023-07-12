#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall polybar

# Launch polybar
polybar main -c $(dirname $0)/config.ini &

#polybar main 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."