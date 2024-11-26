#!/bin/bash
# Install Docker if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing Docker..."
    apt-get update -y
    apt-get install -y docker.io
    systemctl enable docker
    systemctl start docker
fi
