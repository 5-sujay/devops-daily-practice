#!/bin/bash
i=0
addition=0
mul=1

for i in "$@"; 
do 
	addition=$((addition + $i))
	mul=$((mul * $i))
        i=$((i + 1))
done
echo addition of all the command line arguments is $addition
echo product of all the commandline arguments is $mul
#for i in "$@"; do echo "$i"; done



for i in "$*";
do
        addition=$addition+$i
        mul=$mul*$i
    
done
echo addition2 of all the command line arguments is $addition
echo product2 of all the commandline arguments is $mul

