#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
	temp=$(redshift -p 2>/dev/null | grep temp | cut -d " " -f 3 | sed 's/.$//')

	if [ -z "$temp" ]; then
		echo "%{F#505050} "
	elif [ "$temp" -ge 5000 ]; then
		echo "%{F#d7d7d7} "
	elif [ "$temp" -ge 4000 ]; then
		echo "%{F#fabd2f} "
	else
		echo "%{F#ff5555} "
	fi
fi
