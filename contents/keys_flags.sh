#!/usr/bin/env bash

# ------------------------- Variables ------------------------- #

USRS="$(cat /etc/passwd | cut -d : -f 1)"

MSG="$(basename $0) - [OPTIONS]

    -h - Help menu
    -v - Version
    -s - Sort the outputs
    -m - Sets uppercase output
"

VERSION="v1.3"

KEY_SORT=0
KEY_UPPER=0

# ------------------------- Execution ------------------------- #

#if [ "$1" = "-h" ]; then
#    echo "$MSG" && exit 0
#elif [ "$1" = "-v" ]; then
#    echo "$VERSION" && exit 0
#elif [ "$1" = "-s" ]; then
#    echo "$USRS" | sort && exit 0
#fi

while test -n "$1"; do
    case "$1" in
    -h) echo "$MSG" && exit 0 ;;
    -v) echo "$VERSION" && exit 0 ;;
    -s) KEY_SORT=1 ;;
    -m) KEY_UPPER=1 ;;
    *) echo "Invalid Input. Show the -h option." && exit 1 ;;
    esac
    shift # Switch inputs via the $1 variable
done

#[ $KEY_SORT -eq 1 ] && echo "$USRS" | sort
#[ $KEY_UPPER -eq 1 ] && echo "$USRS" | tr [a-z] [A-Z]

[ $KEY_SORT -eq 1 ] && USRS=$(echo "$USRS" | sort)
[ $KEY_UPPER -eq 1 ] && USRS=$(echo "$USRS" | tr [a-z] [A-Z])

echo "$USRS"
