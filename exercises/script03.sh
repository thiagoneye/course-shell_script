#!/usr/bin/env bash

comeca=0
ate=100

if [ $comeca -ge $ate ]; then
    exit 1
fi

for i in $(seq $comeca $ate); do
    for j in $(seq $i $ate); do
        printf "*"
    done
    printf "\n"
done
