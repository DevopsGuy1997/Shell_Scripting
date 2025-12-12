#!/bin/bash
# - run the loop only until a specific number - #
#
a=0
while [ $a -lt 10 ]
do 
	echo "a = $a"
	if [ $a -eq 5 ]; then
		echo "Coming out of the loop .."
		break
	fi
	a=`expr $a + 1`
done
echo "-- EOS --"
