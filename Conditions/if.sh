#!/bin/bash

var1=1
var2=0

echo "-- true condition --"
if [ $var1 ]; then
	echo "1) Got a true expression value"
fi

echo -e "\n-- Check if values are equal --"
if [ $var1 == $var2 ]; then
	echo -e "2) var1 is equal to var2 \n"
fi

echo -e "\n -- Check if Values are not Equal --"
if [ $var1 != $var2 ]; then
	echo "3) var1 is not equal to var2"
fi
