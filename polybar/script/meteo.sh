#! /bin/sh

string=$(curl -s "wttr.in/(city)?format=1")

echo "$string"

