#!bin/bash

clear
echo "these are the available database in your program"

ls datalake/
echo which one do you want to delete:
read name
for k in `ls datalake/`
do
	if  [ -d  "datalake/$name" ]
	then
		rm -r datalake/$name
		echo "Databases after remove $name"
		ls datalake/
		break;

	else
		echo "choose the name correctly"
		sleep 3
		source DBMS.sh
	fi
done
read nothing
