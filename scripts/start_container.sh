#!/bin/bash
# Run the Docker container
docker run -d --name message-app-container -p 80:80 886436972291.dkr.ecr.ap-south-1.amazonaws.com/spring-message-app:latest
