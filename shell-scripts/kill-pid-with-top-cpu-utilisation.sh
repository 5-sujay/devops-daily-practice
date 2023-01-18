#!/bin/bash

echo "Displaying Total available RAM "

grep MemTotal /proc/meminfo

#PID=`ps aux --sort -%cpu | head -2 |tail -1 | awk -F " " {'print $2'}`
PID=`ps aux --sort %mem |tail -1 |awk -F " " '{print $2}'`
echo $PID


echo "enter "yes" to kill the top cpu consuming process " 

read input


if [[ "$input" == "yes" ]]; then

echo "input is yes so killing top cpu consuming process"

sudo  kill -9 $PID

else 
	echo "no need to kill the process"
fi
