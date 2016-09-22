#!/bin/bash
#Script to get the weather from WeatherUnderground for August between 1943 and 2016
#
#Script by Matt 

month=08 # Only looking at August.

for year in {1973..2016} #For each year between 1943 and 2016
do
  for file in /ufrc/zoo6927/kleinje/data/$year/*.txt
  do
    MaxTemp=`awk -F',' '{print $2}' $file | sort -n | tail -n1`
    echo "$year $MaxTemp" >> $year.Max.txt
 done
done
