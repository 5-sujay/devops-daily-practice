#!/bin/bash

read -p "Enter value:" val1

#echo "$val1"|grep "^[0-9]*$"

#val1="$?"

read -p "Enter value:" val2

#echo "$val2"|grep "^[0-9]*$"
#val2="$?"

#if [ "$val1" = "$val2" ] && [ "$val2" = "$val3" ]; then



val3=`expr $val1 + $val2`
echo "val1 + val2 : $val3"

val3=`expr $val1 - $val2`
echo "val1 - val2 : $val3"

val3=`expr $val1 \* $val2`
echo "val1 * val2 : $val3"

val3=`expr $val2 / $val1`
echo "val2 / val1 : $val3"
	


