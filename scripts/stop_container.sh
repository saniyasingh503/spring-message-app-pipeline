#!/bin/bash
# Stop the existing container if it exists
if docker ps -q -f name=message-app-container; then
    docker stop message-app-container
    docker rm message-app-container
fi
