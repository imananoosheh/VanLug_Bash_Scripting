#!/usr/bin/bash

# For Loop
echo "For Loop:"
for (( i=1; i<=5; i++ )); do
    echo "Iteration $i"
done
echo

# For Loop with Array
echo "For Loop with Array:"
fruits=("Apple" "Banana" "Orange" "Grape" "Pineapple")
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
echo

# For Loop with Command Substitution
echo "For Loop with Command Substitution:"
for file in $(ls); do
    echo "File: $file"
done
echo

# For Loop with Range
echo "For Loop with Range:"
for num in {1..5}; do
    echo "Number: $num"
done
echo

# While Loop
echo "While Loop:"
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    (( count++ ))
done
echo

# Until Loop
echo "Until Loop:"
number=10
until [ $number -eq 5 ]; do
    echo "Number: $number"
    (( number-- ))
done