#!/bin/bash

fruit="banana"

case "$fruit" in
	"banana")
		echo "banana's are yellow"
		;;
	"apple")
		echo "apple's are red"
		;;
	"grapes")
		echo "Grapes are green"
		;;
	*)
		echo "not a fruit"
		;;
esac

