#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq music &
polybar -rq tray &
polybar -rq ws &
polybar -rq launcher &
polybar -rq ip &
echo "Polybar launched..."
