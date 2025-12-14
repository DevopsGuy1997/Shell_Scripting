#!/bin/bash

operation=$1       #reading the operation type

if [ $# -ne 1 ]; then
	echo "Please pass a argument i.e add | subtract | multiply"
	exit 1
fi

echo "Enter first value:"
read var1

if [ -z "$var1" ]; then
	echo "Please enter a valid first number"
	exit 1
fi

echo "Enter second value"
read var2

if [ -z "$var2" ]; then
	echo "Please enter a Valid second number"
	exit 1
fi

case "$operation" in
	"add")
		echo "Adding numbers"
		value=`expr $var1 + $var2`
		echo "value=$value"
		;;
	"subtract")
		echo "Subtracting numbers"
		value=`expr $var1 - $var2`
		echo "Value=$value"
		;;
	"multiply")
		echo "Multiplying numbers"
		value=`expr $var1 \* $var2`
		echo "Value=$value"
		;;
	*)
		echo "Invalid Operation"
		;;
esac
		
