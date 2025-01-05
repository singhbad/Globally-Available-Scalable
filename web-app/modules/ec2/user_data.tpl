#!/bin/bash

# Update package repository
sudo yum update -y

# Install EC2 Instance Connect
sudo yum install ec2-instance-connect -y

# Install wget
sudo yum install wget -y

# Install Docker
sudo yum install docker -y
sudo service docker start
sudo systemctl enable docker

# Add the user to the docker group
sudo usermod -aG docker ${user}

# Wait for docker to be available
sleep 10

# Verify installations
docker --version
wget --version