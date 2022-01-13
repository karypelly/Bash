#!/bin/bash
IFS="	"
	while read -ra line
	do
		for word in "${line[1]}"
		do
			echo "$word"
		done
	done < account.txt