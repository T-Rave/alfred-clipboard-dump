#!/bin/bash

read -p "How many results would you like? [press enter for all]: " limit
read -p "Clear previous output file? [y/n]: " clearfile
read -p "Copy results to clipboard? [y/n]: " cliphistory

if [[ -z "$limit" ]] 
then
	result=""
else
	result="LIMIT $limit"
fi

if [ "$clearfile" == "y" ] 
then
	> clipdump.txt
fi

sqlite3 -csv ~/Library/Application\ Support/Alfred\ 3/Databases/clipboard.alfdb "SELECT item FROM clipboard $result;" > clipdump.txt

if [[ "$cliphistory" == "y" ]] 
then
	pbcopy < ./clipdump.txt
fi

