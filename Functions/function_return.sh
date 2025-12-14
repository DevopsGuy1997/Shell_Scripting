#!/bin/bash

echo "Starting the script .."

avg () {
	sum=0

	for var in $@
	do
	  sum=`expr $sum + $var`
	done
	echo "Sum of $@ = $sum"
	val=`expr $sum / $#`

	return $val
}

avg 1 2
ret=$?
echo -e "Average of 1 2 == $ret \n"

avg 3 4 5
ret=$?
echo -e "Averrage of 3 4 5 == $ret \n"
