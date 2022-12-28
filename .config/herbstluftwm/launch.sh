# Polybar Launch script

#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -c ~/.config/herbstluftwm/void-polybar.ini peleg &

echo "Polybar launched..."
