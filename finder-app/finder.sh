#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
    echo "Error: Need Two arguments - filesdir and searchstr"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo " the entered path to a directory doesnot represent a directory  on a filesystem"
    exit 1

fi


numfiles=$(find "$filesdir" -type f | wc -l)
numlines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $numlines"
