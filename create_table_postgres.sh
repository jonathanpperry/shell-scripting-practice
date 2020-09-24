#!/bin/bash
 
###################################################
# First Bash Shell script to execute psql command 
###################################################
 
#Set the value of variable
database="postgres_students"
 
#Execute few psql commands: 
#Note: you can also add -h hostname -U username in the below commands. 
 
psql -d $database -c "CREATE TABLE public.tbl_students(rno integer, name character varying)"
psql -d $database -c "INSERT INTO public.tbl_students VALUES (1,'Anvesh'),(2,'Neevan'),(3,'Roy'),(4,'Martin'),(5,'Jenny')"
psql -d $database -c "SELECT *FROM public.tbl_students"
 
#Assign table count to variable
TableCount=$(psql -d $database -t -c "select count(1) from public.tbl_students")
 
#Print the value of variable
echo "Total table records count....:"$TableCount

