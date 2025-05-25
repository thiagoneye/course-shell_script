#!/usr/bin/env bash

echo "-----------------------------------"

NAME="Thiago Ney"

echo "$NAME"

NUMBER=42

echo $NUMBER

NUMBER1=1
NUMBER2=2

echo $((NUMBER1+NUMBER2))

OUTPUT_CAT=$(cat /etc/passwd | grep thiago)

echo "$OUTPUT_CAT"

echo "-----------------------------------"

echo "Parameter 01: $1"
echo "Parameter 01: $2"
echo "All Parameters: $*"
echo "How many parameters? $#"
echo "The last parameter? $?"
