#!/bin/bash

a="rakesh"
b="srilaxinteriors"

if [ $a = $b ]
then 
	echo "$a = $b : a is equal to b"
else
	echo "$a = $b : a is not equal to b"
fi

if [ $a != $b ]
then 
	echo "$a != $b: a is not equal to b"
else
	echo "$a = $b : a is equal to b"
fi

if [ -z $a ]
then 
	echo "$a : string length is zero"
else
	echo "$a : string length is non zero"
fi

if [ -n $a ]
then
	echo "$a : string length is non zero"
else
	echo "$a : string length is zero"
fi

if [ $a ]
then
	echo "$a : string is not empty"
else
	echo "$a : string is empty"
fi
