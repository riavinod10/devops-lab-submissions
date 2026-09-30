# Assignment 12: Kubernetes Pod & Deployment

## Aim
To create and manage a Kubernetes Deployment and
verify that multiple Pods run successfully.

## Theory
Kubernetes is an open-source container orchestration
platform used to automate the deployment, scaling,
and management of containerized applications.

A Pod is the smallest deployable unit in Kubernetes.
A Deployment manages Pods, maintains the desired
number of replicas, and replaces failed Pods.

## Technologies Used
- Python
- Flask
- Docker
- Kubernetes
- kubectl
- Docker Desktop
- Visual Studio Code

## Project Structure

```text
Assignment-12/
├── app.py
├── requirements.txt
├── Dockerfile
├── commands.ps1
├── README.md
└── k8s-manifests/
    └── web-deployment.yaml
```

## Implementation

### Step 1: Enable Kubernetes
Enable Kubernetes in Docker Desktop and wait until
the cluster is running.

### Step 2: Verify Kubernetes

```powershell
kubectl version --client
kubectl cluster-info
kubectl get nodes
```

### Step 3: Build the Docker Image

```powershell
docker build -t my-flask-app:v2 .
```

### Step 4: Create the Deployment

```powershell
kubectl apply -f k8s-manifests/web-deployment.yaml
```

### Step 5: Verify the Deployment and Pods

```powershell
kubectl get deployments
kubectl get pods
kubectl describe deployment web-app-deployment
```

The Deployment should create two Pods.

### Step 6: Access the Application

```powershell
kubectl port-forward deployment/web-app-deployment 5001:5001
```

Open http://localhost:5001 in your browser.

Expected output:

Hello Kubernetes! Flask application is running.

The health endpoint is available at:

http://localhost:5001/health

### Step 7: Cleanup

After capturing screenshots, stop port-forward
using Ctrl+C and run:

```powershell
kubectl delete -f k8s-manifests/web-deployment.yaml
```

## Result
Successfully created a Kubernetes Deployment with
two replicas of a Flask web application. Verified
the running Pods and accessed the application
through port forwarding.