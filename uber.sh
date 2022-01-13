#!/bin/bash

sum=0.00
while IFS=$',' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[1]}" == *"$1"* ]]
	then
		expense=${line[2]}
		sum=`echo $sum + $expense | bc`
	fi
done < trans0.txt

while IFS=$',' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[3]}" == *"$1"* ]]
	then
		expense=${line[5]}
		sum=`echo $sum + $expense | bc`
	fi
done < trans1.txt

while IFS=$',' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[4]}" == *"$1"* ]]
	then
		expense=${line[6]}
		sum=`echo $sum + $expense | bc`
	fi
done < trans2.txt

while IFS=$',' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[1]}" == *"$1"* ]]
	then
		expense=${line[2]}
		sum=`echo $sum + $expense | bc`
	fi
done < trans3.txt

while IFS=$',' read -r -a line || [ -n "$line" ]
do
	if [[ "${line[3]}" == *"$1"* ]]
	then
		expense=${line[5]}
		sum=`echo $sum + $expense | bc`
	fi
done < trans4.txt


echo $sum