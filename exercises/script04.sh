#!/usr/bin/env bash

# ------------------------- Variables ------------------------- #

FILES_PATH="/home/thiagoney/Pictures/Screenshots"
FILES_NAME=$(ls $FILES_PATH | sed -E "s/Screenshot from (.*)\.png/\1/")

MSG="$(basename $0) - [OPTIONS]

    -h - Help menu
    -v - Version
"

VERSION="v1.0"

# ------------------------- Execution ------------------------- #

while test -n "$1"; do
    case "$1" in
    -h) echo "$MSG" && exit 0 ;;
    -v) echo "$VERSION" && exit 0 ;;
    *) echo "Invalid Input. See the -h option." && exit 1 ;;
    esac
done

for i in "$FILES_NAME"; do
    echo "$i"
done
