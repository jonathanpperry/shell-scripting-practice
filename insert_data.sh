#!/bin/bash -x
DB_USER='root';
DB_PASSWD='M1ghty_cr@ft';

DB_NAME='ppr';
TABLE='graph';

name="Jonathan Perry"
age=28
height=154
body_weight=70

# mysql commands

for i in 1 2 3 4 5
do
  echo "Looping ... number $i"
  mysqlquery="INSERT INTO $TABLE VALUES ('$i', '$name', '$age', '$height', '$body_weight');"

  mysql --user=$DB_USER --password=$DB_PASSWD --database=$DB_NAME -e "$mysqlquery"
done

