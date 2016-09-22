#!/bin/bash
# Script to get high temperature for each day in August  between 1973 and 2016
#
#Script by Jeannie
for file in {/ufrc/zoo6927/kleinje/data/}
do
HighTemp= awk -F',' '{print $2}' $file | sort -n | tail -n1

#echo "Getting highest temperature for $file"
done
