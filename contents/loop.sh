#!/usr/bin/env bash

for (( i=0; i<10; i++ )); do
    echo $i
done

echo "---------"

for i in $(seq 10); do
    echo $i
done

echo "---------"

fruits=(
"Orange"
"Melon"
"Banana"
)

for i in ${fruits[@]}; do
    echo "$i"
done

echo "---------"

count_values=0

while [[ $count_values -lt ${#fruits[@]} ]]; do
    echo $count_values
    count_values=$(($count_values+1))
done
