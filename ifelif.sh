#!/bin/bash

var1=3
var2=3

if [ $var1 -gt $var2 ]; then
	echo "var1 is greater then var2"
elif [ $var1 -lt $var2 ]; then
	echo "var1 is lesser then var2"
else
	echo "var1 is equal to var2"
fi
