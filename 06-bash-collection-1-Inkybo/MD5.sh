#!/bin/bash
echo "input directory: "$1
for i in $1*; do #loop through all files in specified dir
	md5sum $i | cut -d' ' -f1 #get only md5 hashes
done > hash #output to file

hash_=$(cat hash | uniq -d) #sort out all non unique hashes
find $1 -type f -exec md5sum {} + | grep $hash_ | cut -d' ' -f2- #find the files associated w/ the hashes
