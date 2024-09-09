#!/bin/bash

# Check if Docker is installed
if ! [ -x "$(command -v docker)" ]; then
  echo "Error: Docker is not installed." >&2
  exit 1
fi

# Check if Docker Compose is installed
if ! [ -x "$(command -v docker-compose)" ]; then
  echo "Error: Docker Compose is not installed." >&2
  exit 1
fi

# Pull Docker images and start containers
echo "Starting the deployment..."
docker-compose up --build -d

# Output status of running containers
echo "Deployment completed. Running containers:"
docker ps
