#!/usr/bin/python
import argparse
import pprint
import json
import time
import os
#=================================================================#
# Running in python 3.6+ puts json objects in alpha-numeric order #
#			 python 2.7 does not :(								  #
#=================================================================#
p = argparse.ArgumentParser(description = " --dir for Input directory argument") #argument for directory
p.add_argument("--dir", required=True) #require argument
x = p.parse_args()

Dir_dict = [] #create dict
for i in (os.listdir(x.dir)):
	new_dict= {}
	new_dict['_name'] = i #create filename json object/key

	new_dict['access_time_time'] = time.ctime(os.path.getatime(x.dir+i)) #create  json object/key
	Dir_dict.append(new_dict)

	new_dict['last_modify_time'] = time.ctime(os.path.getmtime(x.dir+i)) #create  json object/key
	Dir_dict.append(new_dict)

with open("dir.json", 'w') as f:	# write json object to file specified filename
	for i in Dir_dict:
		f.write(str(i)+"\n")
