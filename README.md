## This script does the following:

* This script will run on Ubuntu

1 - Installs Docker, which is required to run a Kubernetes cluster.

2- Installs kubectl, which is the command-line tool used to interact with Kubernetes clusters.

3 - Installs minikube, which is a tool used to run a local Kubernetes cluster for testing and development.

4 - Starts the minikube cluster.

5 - Creates a Kubernetes secret named github-secret that stores the GitHub token required to connect to GitHub CI/CD.