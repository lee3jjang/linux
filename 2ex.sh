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
        # exit 1
    fi
done

# function statement
function a_function {
    echo $1
}

a_function "132,000"

# local variable
value=1234
function my_func() {
    local value=5678
    echo "function: value=${value}"
}
echo "before : value=${value}"
my_func
echo "after : value=${value}"

# array
array_name=("value 1" "value 2" "value 3")
echo "array = ${array_name[@]}"

for ((i=0; i<3; i++)); do
    echo "$i"
done

printf "ddd\n"

if [ -d "$DIRECTORY" ]; then
    echo "$DIRECTORY exists."
fi