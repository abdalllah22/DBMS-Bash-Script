#!/bin/bash

clear 
echo "Now we will create the database"
echo "**Please choose a vaild name to create a database correctly**"
echo "Enter the Database name:"

read name
if [[   $name  ==  +([0-9])  ]]
then
	echo "Sorry Invaid Name, you should start with a letter"
	read nothing
else
	mkdir datalake/$name
	echo "you created $name database"
	read nothing
fi

