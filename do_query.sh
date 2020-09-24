#!/bin/bash -x

DB_USER='root';
DB_PASSWD='M1ghty_cr@ft';

DB_NAME='ppr';
TABLE='graph';

mysqlquery="select * from $TABLE"
echo $mysqlquery

var = mysql --user=$DB_USER --password=$DB_PASSWD --database=$DB_NAME -e "$mysqlquery"
echo $var
