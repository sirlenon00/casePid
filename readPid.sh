#!/bin/bash

while :
do
	# read file "pid"
	name_pid=$(<pid)
	# get python actives processes
	py_PidProcess=$(pgrep python -d ' ')		
	# verify if ID is in actives processes
	if [[ "$py_PidProcess" == *"$name_pid"* ]]
	then
		echo "1: It is alive"
	else
		echo "1: It is dead"				
		# run python script
		python3 identifyPid.py &
	fi	
done