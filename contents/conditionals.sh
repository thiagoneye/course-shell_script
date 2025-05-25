#!/usr/bin/env bash

VAR1=""
VAR2=""

if [[ "$VAR1" = "$VAR2" ]]; then
    echo "Equals1"
fi

if [[ "$VAR1" = "$VAR2" ]]
then
    echo "Equals2"
fi

if [ "$VAR1" = "$VAR2" ]
then
    echo "Equals3"
fi

[ "$VAR1" = "$VAR2" ] && echo "Equals4"
