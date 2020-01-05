#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="adenijiazeez/machinelearning-micro-srv"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker login
docker tag machinelearning-micro-srv adenijiazeez/machinelearning-micro-srv:latest
docker push  adenijiazeez/machinelearning-micro-srv:latest
