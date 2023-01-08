#! /bin/zsh

act=$(cat /sys/class/backlight/acpi_video0/actual_brightness)
max=$(cat /sys/class/backlight/acpi_video0/max_brightness)

let act1=$act\*100
let perc=$act1/$max

if [[ $perc -eq 0 ]]
then
	echo 
else
	echo "[$perc]"
fi

