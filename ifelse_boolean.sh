#!/bin/bash

a=20
b=20

if [ $a -lt 100 -a $b -gt 15 ]
then
	echo "$a -lt 100 -a $b -gt 15 : returns true"
else
	echo "$a -lt 100 -a $b -gt 15 : returns false"
fi

if [ $a -lt 100 -a $b -gt 25 ]
then
	echo " $a -lt 100 -a $b -gt 25 : returns true"
else
	  echo " $a -lt 100 -a $b -gt 25 : returns false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
	echo "$a -lt 100 -o $b -gt 100 : returns true"
else
	echo "$a -lt 100 -o $b -gt 100 : returns false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then
	echo "$a -lt 5 -o $b -gt 100 : returns true"
else
	echo "$a -lt 5 -o $b -gt 100 : returns false"
fi

