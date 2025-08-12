#!/bin/bash

# Stop any running instances of the application
echo "Stopping existing application..."
sudo systemctl stop my-app.service || true