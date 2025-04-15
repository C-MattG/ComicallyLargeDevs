#!/bin/bash

# Change to the BucStop folder
echo "Navigating to BucStop folder..."
cd /home/ec2-user/ComicallyLargeDevs/Team-3-BucStop-sprint_8/BucStop || { echo "BucStop folder not found!"; exit 1; }

# Ensure dotnet 6.0 is installed
echo "Installing .NET SDK 6.0..."
sudo yum install -y dotnet-sdk-6.0

# Install Docker (not sure if necessary, but let's do it)
echo "Installing Docker..."
sudo yum install -y docker

# Start and enable Docker
echo "Starting Docker..."
sudo systemctl start docker
sudo systemctl enable docker

# Run .NET tasks
echo "Restoring .NET dependencies..."
sudo dotnet restore

echo "Building .NET project..."
sudo dotnet build

echo "Running .NET project..."
sudo dotnet run
