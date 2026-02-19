#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <foldername> <start> <end>"
    exit 1
fi

for (( num=$2; num<=$3; num++ ))
do
    mkdir "$1$num"
done

echo "Folders created successfully!"

