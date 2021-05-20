#!/bin/bash
echo "--> Now, Insert in the table <--"

echo "**these are the available databases**"
ls datalake/

echo "Enter Database name:"
read databaseName


if [ -d "datalake/$databaseName" ]
then
	echo "Vaild data .. continue-->"
else
	echo "choose the name correctly"
                sleep 3
                source ConnectMenu.sh
fi

echo "**these are the available tables in $databaseName**"
ls datalake/$databaseName

echo "Enter table name: "
read tableName

if [ -f "datalake/$databaseName/$tableName.csv" ]
then
        echo "Vaild data .. continue-->"
else
        echo "choose the name correctly"
                sleep 3
                source ConnectMenu.sh
fi

if [ -s  "datalake/$databaseName/$tableName.csv" ]
then 
	echo "the schema of table is definied"
	#head -1 datalake/$databaseName/$tableName.csv
	frist_line=`head -1 datalake/$databaseName/$tableName.csv` 
	echo "$frist_line"
	number_of_comma=`awk -F, '{print NF-1}' <<<"$frist_line"`
	#echo "$number_of_comma"
	echo "Enter the data separated column by column according the schema above"
	for ((i=1; i<=number_of_comma; i++));
	do
		read -p 'Enter the value of  col:' k
		printf "$k,"  >> datalake/$databaseName/$tableName.csv
	
	done
	echo "" >> datalake/$databaseName/$tableName.csv
	
else 
	echo "**The table is empty**"
	echo "**we will define schema**"
       	echo "Enter Number of Columns in $tableName:"
	read no_of_col
	
	if [[ ! "$no_of_col" =~  ^[1-9][0-9]*$  ]]
   	then
    		echo "invaild data, you should enter numbers"
    		read nothing
    		source ConnectMenu.sh
	else
		echo "Valid data continue -->"
     	fi
	
	
	for ((i=1; i<=no_of_col; i++));
        do
		read -p "Enter the name of $i col:" k
                printf "$k,"  >> datalake/$databaseName/$tableName.csv
        done
	echo "" >> datalake/$databaseName/$tableName.csv
	echo "the structure is created correctly"	
	
		

			   		
fi
	

read nothing
		
                
