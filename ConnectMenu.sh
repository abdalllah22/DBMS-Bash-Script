#!/bin/bash
clear
echo "these are the available databases in your program"
ls datalake/

PS3="You have many options, choose an option: "
select option in "Create Table" "List Tables" "Drop Table" "Insert Into Table" "Select From Table" "Delete From Table" "Back To Home"
do
	case $REPLY in
	1 ) source CreateTable.sh; break;;
	2 ) source ListTables.sh; break ;;
	3 ) source DropTable.sh; break ;;
      	4 ) source Insert.sh; break ;;
	5 ) source Select.sh; break ;;	  	
	6 ) source Delete.sh; break;;
	7 ) source DBMS.sh ;; 
	* ) echo "Dear `echo $USER`, you choose an option out of the list "; 
		sleep 3;  source ConnectMenu.sh ;;
	esac
done 

	
