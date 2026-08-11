#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
    echo "Error: Two arguments required - writefile and writestr"
    exit 1
fi

mkdir -p $(dirname "$writefile")

if [ $? -ne 0 ]; then
    echo "Error: Could not create directory for $writefile"
    exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi