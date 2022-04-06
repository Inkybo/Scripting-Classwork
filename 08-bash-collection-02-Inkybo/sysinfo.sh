#!/usr/bin/env bash


echo "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
echo "Menu"
echo "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
echo "1. OS Info"
echo "2. Hostname"
echo "3. Network info"
echo "4. IP Address only"
echo "5. Users logged in"
echo "6. Disk Usage"
echo "7. Process list"
echo "8. Exit"
echo
read -p "Option: " option


case $option in
	1)
	uname -a
	;;
	2)
	uname -n
	;;
	3)
	ip addr
	;;
	4)
	ip addr | cut -d" " -f2,5,6| sed '/^[[:space:]]*$/d'
	;;
	5)
	who
	;;
	6)
	df
	;;
	7)
	top
	;;
	8)
	exit
	;;
esac
echo

#	4. Systeminfo Script
#	    Menu that asks which information the user would like to see
#	    User selects a choice
#
#	        ------------------
#	        Menu:
#	        ------------------
#	        1. OS Info
#	        2. Hostname
#	        3. Network info
#	        4. IP Address only
#	        5. Users logged in
#	        6. Disk Usage
#	        7. Process list
#	        8. Exit
#
#	        Enter your choice [ 1 - 8 ]
#
#	    Useful commands
#	        uname
#	        hostname
#	        netstat / ss
#	        ifconfig / ip
#	        who
#	        df#
