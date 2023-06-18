#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tuancnh/ml-classification"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-classification --image=$dockerpath --port=5000


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-classification --type=LoadBalancer --port=5000

# Open the service
# minikube service ml-classification
