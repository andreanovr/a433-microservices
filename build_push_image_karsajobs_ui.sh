#!/bin/bash

# Build Docker image
docker build -t ghcr.io/andreanovr/karsajobs-ui:latest .

# Log in to GitHub Container Registry
docker login ghcr.io -u andreanovr -p $GH_PACKAGES_TOKEN

# Push Docker image to GitHub Container Registry
docker push ghcr.io/andreanovr/karsajobs-ui:latest
