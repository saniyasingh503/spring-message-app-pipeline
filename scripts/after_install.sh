#!/bin/bash
# Authenticate Docker with ECR
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 886436972291.dkr.ecr.ap-south-1.amazonaws.com

# Pull the Docker image from ECR (replace with your actual repository URL)
docker pull 886436972291.dkr.ecr.ap-south-1.amazonaws.com/spring-message-app:latest

# Or, if you're using Docker Hub, replace the ECR login with your Docker Hub login:
# docker login -u <username> -p <password>
# docker pull <docker-hub-repo>:latest
