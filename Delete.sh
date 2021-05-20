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

echo "this is the content of table:"
echo "------->                   <-------"
cat datalake/$databaseName/$tableName.csv
echo "------->                   <-------"

echo "Now select the row-->"
echo "Enter the Pk to delete :"
read pk

sed -i  "/^$pk,/d" datalake/$databaseName/$tableName.csv
echo "The table after removing:"
echo "------->                   <-------"
cat datalake/$databaseName/$tableName.csv
echo "------->                   <-------"

read nothing
