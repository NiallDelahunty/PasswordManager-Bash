#!/bin/bash

username="$1"
service="$2"
path="$username/$service"

#check that there is 1 or 2 parameters
if [ $# -eq 0 ] || [ $# -gt 2 ]; then
	echo "Error: parameters problem"
	exit 1
fi
#Check that username exists
if [ ! -e "$username" ]; then
	echo "Error: user does not exist"
	exit 2
fi
#if there were two arguments given check if the path i.e. user/service leads to a directory, if so output the tree command for that service.
if [ $# -eq 2 ]; then
	#used to be -e path, changed to -d as service should be just a folder- could add -e to check if folder exists and then have a nested if to check if service is a folder
	if [ -d "$path" ]; then
		echo "OK: "
                echo "$(tree "$path")"
                exit 0
	else
		echo "Error: folder does not exist"
                exit 3
	fi
fi

echo "OK: "
echo "$(tree "$username")"
exit 0
