#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
(sleep 0.2; polybar top_bar) &

notify-send Polybar "Bar launched"
