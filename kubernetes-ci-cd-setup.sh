#!/bin/bash

# Install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Install kubectl
sudo apt-get update
sudo apt-get install -y apt-transport-https gnupg2 curl
sudo curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start minikube
minikube start

# Connect to GitHub CI/CD
kubectl create secret generic github-secret --from-literal=GITHUB_TOKEN=${{ secrets.GITHUB_TOKEN }}
