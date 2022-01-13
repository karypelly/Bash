#!/bin/bash

read ID

while IFS=$'\t' read -r -a line || [ -n "$line" ]
do 
	if [[ $ID == ${line[0]} ]]
	then 
		name=${line[1]}
		
	fi
done < NameID.txt

count=0
while IFS=$'\t' read -r -a line || [ -n "$line" ]
do 
	if [[ $name == ${line[1]} ]]
	then
		count=$((count+1))
	fi
done < NameCourse.txt

echo $count
	
	