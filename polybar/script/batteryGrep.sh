#! /bin/bash

state="$(acpi | grep 'Battery 0' | cut -d ' ' -f 3 | sed 's/,//')"
current="$(acpi | grep 'Battery 0' | cut -d ' ' -f 4 | sed 's/%,//')"
if [[ -n $current ]] && [[ $current -gt 0 ]]
then
	if [ $state = "Discharging" ] || [ $state = "Charging" ]
	then
		if [ $state = "Discharging" ] && [ $current -lt 21 ]
		then
			echo [$current] [Allert!]
		else
			echo [$current] [$state]
		fi
	else
		echo "[$state]"
	fi
else
	echo "[Running on A/C]"
fi

