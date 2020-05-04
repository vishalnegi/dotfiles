!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar mybar &
polybar example >>/tmp/polybar1.log 2>&1 &

echo "Polybar launched..."
