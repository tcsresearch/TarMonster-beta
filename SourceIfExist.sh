#!/bin/env bash

# Ensure a file argument was provided
if [ -z "$1" ]; then
    echo "ERROR: No file specified. Usage: $0 <filename>"
    exit 1
fi

FILE_TO_SOURCE="$1"

# Check if the file exists and is a regular file
if [ -f "$FILE_TO_SOURCE" ]; then
    echo "Sourcing '$FILE_TO_SOURCE': [OK]. "
    source "$FILE_TO_SOURCE"
else
    echo "ERROR: File '$FILE_TO_SOURCE' does not exist."
    exit 1
fi
