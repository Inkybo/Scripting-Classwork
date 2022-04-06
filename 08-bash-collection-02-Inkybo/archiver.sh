#!/bin/bash

#for $i in $1

find . -type f -mtime +6 | zip `date +%d_%m_%y`.zip -@


#3. Archiver
#    Takes a directory as a script parameter
#    Zip any file that hasn't been modified in over a week
#        Use the find command and –mtime argument
#    Name the new zip with the current date
