#!/usr/bin/env bash


echo "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
echo "Menu"
echo "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
echo "1. List Users"
echo "2. Create User"
echo "3. Delete User"
echo "4. List Groups"
echo "5. Create Groups"
echo "6. Delete Group"
echo "7. Change User Password"
echo "8. Exit"
echo
read -p "Option: " option

case $option in
	1)
	cut -d: -f1 /etc/passwd #list all system users
	;;
	2)
	read -p "enter name for the user you wish to create: " user_add
	useradd $user_add #add user without setting password
	;;
	3)
	read -p "enter name for the user you wish to delete: " user_del
	userdel $user_del #delete user account but keep user dir and other files
	;;
	4)
	cut -d: -f1 /etc/group #list groups
	;;
	5)
	read -p "enter name for the group you wish to create: " group_named_to_add
	groupadd $group_named_to_add #add specified group
	;;
	6)
	read -p "enter name for the group you wish to delete: " group_named_to_del
	groupdel $group_named_to_del #delete specified group
	;;
	7)
	read -p "enter username for the password you wish to change: " Username
	passwd $Username #changes the specified users password
	;;
	8)
	exit
	;;
esac
echo
