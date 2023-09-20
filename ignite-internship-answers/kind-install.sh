#!/bin/bash

# Set the Kind version you want to install
KIND_VERSION="v0.20.0" 

# Define the URL to download the Kind binary
KIND_URL="https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64"

echo "Downloading Kind v0.20.0..."
curl -Lo kind "${KIND_URL}"

chmod +x kind

mv kind /usr/local/bin

kind version

exit 0
