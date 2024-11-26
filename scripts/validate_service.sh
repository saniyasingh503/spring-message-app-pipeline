#!/bin/bash
# Check if the container is running
if docker ps -q -f name=message-app-container; then
    echo "Container is running successfully."
    exit 0
else
    echo "Container is not running."
    exit 1
fi
