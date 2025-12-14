#!/bin/bash
# print avarage of 3 numbers

var1=1
var2=2
var3=3

sum=`expr $var1 + $var2 + $var3`
avg=`expr $sum / 3`
echo "Avarage of $var1, $var2, $var3 is $avg"
