#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing Docker..."

    # Update the system and install Docker
    yum update -y
    yum install -y docker

    # Enable and start Docker service
    systemctl enable docker
    systemctl start docker

    # Verify Docker installation
    if ! command -v docker &> /dev/null
    then
        echo "Docker installation failed"
        exit 1
    else
        echo "Docker installed successfully"
    fi
else
    echo "Docker is already installed"
fi
