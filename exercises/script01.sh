#!/usr/bin/env bash

if [ $1 > 10 ]
then
    echo "The first variable ("$1") is bigger than 10. The script name is $0 (PID: $$)."
fi
