#!/bin/bash
echo "input file: "$1

if [[ "$1" == *"."* ]];then
	ext=$(echo $1 | cut -d'.' -f2) #cut filename from extention
	cp $1 "Backup."$ext #append the extention to the new file
else
	cp $1 "Backup" #if no extension just have file name
fi
