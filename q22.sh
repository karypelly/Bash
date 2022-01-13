#!/bin/bash
while :
do
	read one two three
	if [[ $one < $two && $two < $three ]]
	then 
		echo $two
		exit
	else
		echo NO
		continue
	fi
done