#!/bin/bash
clear
echo "these are the available database in your program:"
ls datalake/

echo "Enter the database name:"
read databaseName

if  [ -d  "datalake/$databaseName" ]
	then
		echo "the tables in $databaseName"
		ls datalake/$databaseName
		read nothing
		break;

	else
		echo "choose the name correctly"
		sleep 3
		source ConnectMenu.sh
	fi
