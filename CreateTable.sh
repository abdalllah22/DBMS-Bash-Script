#!/bin/bash
clear


echo "Now we will create table"
echo "Enter The Table Name correctly:"
read tableName

if [[   $tableName  ==  +([0-9])  ]]
then
	echo "Sorry Invaid Name, you should start with a letter"
	read nothing
else
	echo "the table name is vaild"
fi


echo "which database do you want to put $tableName in:"
echo "These are the available database in your program:"
ls datalake/

echo "Enter name of database "
read databaseName



if  [ -d  "datalake/$databaseName" ]
	then
		touch  datalake/$databaseName/$tableName.csv
		echo "'$tableName' table is created in '$databaseName' database"
		read nothing
		break;

	else
		echo "choose the name correctly"
		sleep 3
		source ConnectMenu.sh
fi
read nothing
