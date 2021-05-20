#!/bin/bash
# This is the interface of database engine

clear;
while [ true ]
do
	clear;
	echo "Hello, `echo $USER` welcome to our Database Management System"
	PS3="You have many options, choose an option: "
	select option in "Create Database" "List Databases" "Connect To Databases" "Drop Database" "More Info about Program" "Exit"
	do
	case $REPLY in
	1 ) source CreateDatabase.sh; break;;
	2 ) source ListDatabases.sh; break ;;
	3 ) source ConnectMenu.sh; break ;;
      	4 ) source DropDatabase.sh; break ;;
	5 ) cat ReadMe;; 	
	6 )echo "Dear `echo $USER`, you exit from the DBMS";  exit;;
	* ) echo "Dear `echo $USER`, you choose an option out of the list "; 
		sleep 3;  break ;;
	esac
	done 
done 

