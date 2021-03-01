#!/bin/bash

num_a=400
num_b=200

# if statement
if [ $num_a -lt $num_b ]; then
    echo "$num_a is less then $num_b!"
else
    echo "$num_a is greater than $num_b!"
fi

# for statement
for i in 1 2 3; do
    echo $i
done

# while statement
counter=0
while [ $counter -lt 3 ]; do
    let counter+=1
    echo $counter
    if [ $counter -eq 2 ]; then
        echo "Exit!"
        exit 1
    fi
done
