#!/usr/bin/env bash
# This file tags and uploads an image to AWS Elastic Container Registery (ECR)

# Assumes that an image is built via `run_docker.sh`
# This file was used to push the original App docker image to AWS ECR

# Step 1:
# Authenticateaws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 016957448722.dkr.ecr.us-east-1.amazonaws.com

# Step 2:
# Build image
docker build -t khalifacapstone .

# Step 2:  
# Tag the image to push it to the repo
docker tag khalifacapstone:latest 016957448722.dkr.ecr.us-east-1.amazonaws.com/khalifacapstone:latest

# Step 3:
# Push image to a docker repository
docker push 016957448722.dkr.ecr.us-east-1.amazonaws.com/khalifacapstone:latest
