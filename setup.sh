#!/bin/bash

echo "===> Install basic utilities..."
apt-get update
apt-get install --yes sudo apt-transport-https ca-certificates

echo "===> Install Docker..."
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" | tee /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install --yes docker-engine

echo "===> Clean up apt caches..."
apt-get clean 
rm -rf /var/lib/apt/lists/*
