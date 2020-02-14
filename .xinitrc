while xsetroot -name "  `amixer get Master | grep -o "[0-9]*%" | head -1` |  `date`"
do
	sleep 1
done &

feh --bg-scale '/depot/wallpapers/sea.jpg'
compton &
dwm
