#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "--- Building the Docker image (dwh-challenge)... ---"
# Build the Docker image from the Dockerfile in the current directory (.)
# and tag it with the name 'dwh-challenge'
docker build -t dwh-challenge .

echo ""
echo "--- Running the Docker container to process data and view results... ---"
# Run a container from the 'dwh-challenge' image.
# The --rm flag automatically removes the container after it exits.
docker run --rm dwh-challenge
