#!/bin/bash

set -e    # Exit immediately if any errors

echo "Starting safe script..."

mkdir /tmp/devops-test || echo "Directory already exists or cannot be created"

cd /tmp/devops-test || { echo "Failed to enter directory"; exit 1; }

touch testfile.txt || { echo "Failed to create file"; exit 1; }

echo "File created successfully in /tmp/devops-test"
echo "Script completed."

