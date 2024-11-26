#!/bin/bash
# Run the Docker container
docker run -d --name message-app-container -p 80:80 123456789012.dkr.ecr.us-east-1.amazonaws.com/my-repository:latest
