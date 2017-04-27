#A piece of software developed by Ismael Garcia during 2017

#! /bin/bash


dias=-7
startdays=0
finishdays=6
declare -a amonths
for((k=startdays; $k<=$finishdays; k++))
do
   fecha=$(date +"%d%m%y" -d "$dias days")
   dias=$(($dias+1))
   checkmonth=${fecha:2:2}
   amonths[$k]=$checkmonth
done     

#printing array: amonths 
for item in ${amonths[*]}
do
   printf "%s\n" $item
done
