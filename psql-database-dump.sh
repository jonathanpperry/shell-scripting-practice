#! /bin/bash
# It backs up myDB every evening and logrotate takes care of compression and removal
 
# Notes
# Ensure DUMPDIR is writable from postgres user
# Place script in /tmp
# Ensure this script is executable by postgres user
 
# Shortcut
DUMPDB='/usr/bin/pg_dump'
 
# DB DUMP DIRECTORY
DUMPDIR='/DBBACKUPS'
 
# STAMP DATE
DSTAMP=$(date "+%d-%m-%Y")
 
# Execute DUMP
$DUMPDB -U postgres mydb > $DUMPDIR/mydb-$DSTAMP.bak
