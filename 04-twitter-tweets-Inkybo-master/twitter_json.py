import json
import pprint
import argparse
from collections import Counter

#input file parse
p = argparse.ArgumentParser(description = "input for data")
p.add_argument("--input_file", required = True)
p.add_argument("--output_results", required = True)
p.add_argument("--output_tz", required = True)
p.add_argument("--output_hashtags", required = True)
arguments = p.parse_args()

with open(arguments.input_file,'r') as f:
	data = f.readlines()

json_list = []
l1 = []
l2 = []
l3 = []

###############################################################################
for i in data:
	x = json.loads(i)
	new_dict = {}

	id1 = x ['id']
	new_dict['tweet_id'] = id1 #adding tweet id to dict

	id2 = x ['user']['id']
	new_dict['user_id'] = id2 #adding user id to dict

	id3 = x ['user']['favourites_count']
	new_dict['favourites'] = id3 #adding favorite count to dict
	l1.append(new_dict)
###############################################################################
	time_dict = {}
	id_time = x ['user']['time_zone']
	time_dict['time_zone'] = id_time #adding tie zones to dict
	l2.append(id_time)
###############################################################################
	hash_dict = {}
	id_tag = x ['entities']['hashtags']
	for new_var in id_tag:
		x = new_var['text']
		l3.append(x)
###############################################################################

with open(arguments.output_results, 'w') as f:
	for i in l1:
		f.write(str(i)+"\n")
with open(arguments.output_tz, 'w') as f:
	for i,j in zip(Counter(l2).keys(), Counter(l2).values()): #counter .keys function counts unique vlaues while counter .values counts the amount a unique key appears
		f.write(str(i)+": "+str(j)+"\n")
with open(arguments.output_hashtags, 'w') as f:
	for i in l3:
		f.write("#"+str(i)+"\n")
