#!/bin/bash

# Check if Docker Desktop is already installed
if [ -x "$(command -v docker)" ]; then
    echo "Docker Desktop is already installed."
    exit 0
fi

# Install Chocolatey (if not already installed)
if ! [ -x "$(command -v choco)" ]; then
    echo "Installing Chocolatey..."
    powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
fi

# Install Docker Desktop using Chocolatey
echo "Installing Docker Desktop..."
choco install docker-desktop -y

# Start Docker Desktop
echo "Starting Docker Desktop..."
# The following command launches Docker Desktop in the background. You may need to adapt it.

"C:\Program Files\Docker\Docker\Docker Desktop.exe" &

echo "Docker Desktop installation and startup completed."
