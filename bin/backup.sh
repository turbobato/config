#! /usr/bin/env bash

if [[$# -ne 1 ]] 
then
    echo "Invalid number of arguments"
else 
    if [[ -d $1 ]] 
    then
        date=$(date %F)
        tar cvfz $1/backup_$date.tar.gz $HOME
    else 
        echo "Invalid name of directory"
    fi
fi