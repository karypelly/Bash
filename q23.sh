#!/bin/bash

if [[ $# > 0 ]]
	then 
		echo No command line arguments please
	fi
while :
do
	read num
	i=1
	while [[ $i < $num ]]
	do
		j=0
		while [[ $j < $num ]]
		do 
			hyp=$(((i*i)+(j*j)))
			numsqu=$(((num*num)))
			if [[ $hyp == $numsqu ]]
			then
				echo YES
				exit
			fi
			j=$((j+1))
		done
	i=$((i+1))
	done
	echo NO
	exit	
done