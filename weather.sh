#! /bin/bash

echo 'Enter City Name:'
read city

curl -s wttr.in/$city?T --output weather.log

obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -e '-?[[:digit:]].*')
echo "Current temperature of $city is $obs_temp"
