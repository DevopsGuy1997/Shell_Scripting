#!/bin/bash

a=1
b=1

check () {
	echo "Going to check the values $1 $2 .."

	if [ $1 -eq $2 ]; then
		echo "numbers are equal"
	else
		echo "numbers are not equal"
	fi
}

echo "Calling check() function with value $a $b .."
check $a $b

c=2
d=3
echo "calling check() function again with values $c $d .."
check $c $d

echo "-- EOS --"
