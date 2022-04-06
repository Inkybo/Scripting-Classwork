#!/bin/bash

num = 1
for i in $1*; do
	mv $i "$i"_"$2"_"$num"
	((num=num+1))
done

#2. Batch Renaming
#    Directory full of files
#    Rename all of the files with a prefix given as a script parameter
#        i.e. ./rename.sh Image
#    Rename files with a number
#        image01
#        image02
#        ...
