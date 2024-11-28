#!/bin/bash

# Enable debug mode to print commands being executed and their output
set -ex

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing Docker..."
    yum update -y
    yum install -y docker
    systemctl enable docker
    systemctl start docker
fi

# Check if the Docker service is running
if ! systemctl is-active --quiet docker
then
    echo "Docker service is not running. Starting Docker..."
    systemctl start docker
fi

# Print Docker version and status for debugging
echo "Docker version:"
sudo docker --version

echo "Docker service status:"
systemctl status docker

# List all containers (running and stopped) for debugging
echo "Currently all containers (running and stopped):"
sudo docker ps -a

# Check if the container is running
container_id=$(sudo docker ps -q -f name=message-app-container)

if [ -z "$container_id" ]; then
    echo "No container named 'message-app-container' is running."
else
    # Stop and remove the container if it's running
    echo "Stopping container 'message-app-container'..."
    sudo docker stop message-app-container
    if [ $? -ne 0 ]; then
        echo "Failed to stop container 'message-app-container'"
        exit 1
    fi

    echo "Removing container 'message-app-container'..."
    sudo docker rm message-app-container
    if [ $? -ne 0 ]; then
        echo "Failed to remove container 'message-app-container'"
        exit 1
    fi
fi

echo "Container stop and removal process completed (if applicable)."
