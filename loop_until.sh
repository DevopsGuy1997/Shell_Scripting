#!/bin/bash

a=13     # change the value to 1 & try

until [ $a -lt 10 ]
do
	echo "a=$a"
	a=`expr $a - 1`
done

