#!/bin/bash
#Script to get the weather from WeatherUnderground for August between 1943 and 2016
#
#Script by Jeannie, stolen from Matt

for year in {1973..2016} #For each year between 1943 and 2016
do
  for file in /ufrc/zoo6927/kleinje/data/$year/*.txt
  do
    MaxTemp=`awk -F',' '{print $2}' $file | sort -n | tail -n1`
    echo "$year $MaxTemp" >> $year.Max.txt
   done
   sort -k2n $year.Max.txt | tail -n1 >> annual.Max.txt

done
sort -k2n annual.Max.txt | tail -n5 >> FiveMaxYears.txt
sort -k2n annual.Max.txt | head -n5 >> FiveLowYears.txt
