# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#excecute
polybar main -c ~/.config/polybar/config.ini & 
polybar second -c ~/.config/polybar/colors.ini &
