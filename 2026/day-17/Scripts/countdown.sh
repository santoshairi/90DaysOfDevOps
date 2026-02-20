#!/bin/bash


read -p "Enter a number to start countdown: " num

while [ "$num" -ge 0 ]
do
    echo "$num"
    num=$((num - 1))
done

echo "Done!"

