#!/bin/bash
# -print average of given numbers -#

sum=0
ans="y"
count=0

while [ $ans == "y" ]
do
	if [ $count -ne 0 ]; then
		read -p "Do you want to continue (y/n):" ans
	fi
	
	if [ $ans == "y" ]; then
		read -p "Enter a number:" num
		sum=`expr $sum + $num`
		count=`expr $count + 1`
	fi
done

if [ $count -lt 2 ]; then
	echo "You need atleast 2 values for the average"
else
	avg=`expr $sum / $count`
	echo "Averagr = $avg"
fi
