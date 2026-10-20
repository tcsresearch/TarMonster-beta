#!/bin/env bash

# Example variables (e.g., populated from command-line arguments)
USER_NAME=$1
API_KEY=$2
OUTPUT_DIR=$3

# Run the validation check
if ! VarChecker USER_NAME API_KEY; then
    echo "Validation failed. Exiting script."
    exit 1
fi

echo "All required variables are present. Proceeding..."
