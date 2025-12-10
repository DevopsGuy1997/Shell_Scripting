#!/bin/bash

echo "file name \$0:$0"
echo "total number of arguments passed \$#:$#"
echo "all the arguments \$@:$@"

echo " -- -- -- -- "
echo "First argument \$1=$1"
echo "second argument \$2=$2"
echo "third argument \$3=$3"
echo "fourth argument \$4=$4"
echo "fifth argument \$5=$5"
echo "sixth argument \$6=$6"
echo "savent argument \$7=$7"
echo "eight argument \$8=$8"
echo "ninth argument \$9=$9"

echo "-- -- -- --"
echo "exit state of the previous command \$?:$?"
echo "process ID of the current script \$$:$$"

echo "-- -- -- --"
shift
echo "total number of arguments after shift \$#:$#"
echo "all the arguments \$@:$@"

