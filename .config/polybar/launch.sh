!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar mybar &
polybar example >>/tmp/polybar1.log 2>&1 &
#polybar example1 -c ~/.config/polybar/config_top &
#polybar example2 -c ~/.config/polybar/config_bottom

echo "Polybar launched..."
