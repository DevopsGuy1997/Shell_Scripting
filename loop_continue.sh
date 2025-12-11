#!/bin/bash
# - Run the loop only for the odd numbers - #

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
	Q=`expr $NUM % 2`
	if [ $Q -eq 0 ]
	then 
		echo "Number is an even number $NUM - skip iteration!!"
		continue
	fi
	echo "Found odd number $NUM"
	echo "-- EOL --"
done

echo "-- EOS --"
