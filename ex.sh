#!/bin/bash

user=$(whoami)
input=/home/$user

total_files () {
    find $1 -type f | wc -l
}

total_folders () {
    find $1 -type d | wc -l
}

echo `total_files $input`
echo `total_folders $input`
echo $0
echo $#
echo $@
echo $$

val=`expr 2 + 35 - 3 \* 3`
echo $val