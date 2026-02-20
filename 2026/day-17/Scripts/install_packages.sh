#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root using: sudo -i or sudo su"
  exit 1
fi

# Define package list
packages=("nginx" "curl" "wget")

echo "Starting package verification..."
echo "----------------------------------"

# Loop through package list

for pkg in "${packages[@]}"; do
    echo "Checking package: $pkg"

    if dpkg -s "$pkg" >/dev/null 2>&1; then
        echo "✔ $pkg is already installed. Skipping."
    else
        echo "✘ $pkg is not installed. Installing..."
        apt update -y
        apt install -y "$pkg"

        if dpkg -s "$pkg" >/dev/null 2>&1; then
            echo "✔ $pkg installed successfully."
        else
            echo "⚠ Failed to install $pkg."
        fi
    fi

    echo "----------------------------------"
done

echo "Package installation process completed."

