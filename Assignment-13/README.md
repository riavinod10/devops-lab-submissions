# Assignment 13: Kubernetes Service & Networking

## Aim
To create a Kubernetes Service and expose a Flask
application running inside Kubernetes Pods.

## Theory
A Kubernetes Service provides a stable network
endpoint for accessing one or more Pods.

Pods are temporary and their IP addresses can change.
A Service uses labels and selectors to route traffic
to the appropriate Pods.

A NodePort Service exposes an application outside
the cluster through a port on each cluster node.

The kubectl port-forward command can also forward
traffic from the local machine to a Kubernetes Service.

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
Assignment-13/
├── app.py
├── requirements.txt
├── Dockerfile
├── commands.ps1
├── README.md
└── k8s-manifests/
    ├── web-deployment.yaml
    └── web-service.yaml
```

## Implementation

### Step 1: Build the Docker Image

```powershell
docker build -t my-flask-app:v2 .
```

### Step 2: Create the Kubernetes Deployment

```powershell
kubectl apply -f k8s-manifests/web-deployment.yaml
```

### Step 3: Verify the Pods

```powershell
kubectl get pods
kubectl get deployments
```

The Deployment should maintain two application Pods.

### Step 4: Create the Kubernetes Service

```powershell
kubectl apply -f k8s-manifests/web-service.yaml
```

### Step 5: Verify the Service

```powershell
kubectl get services
kubectl describe service web-app-service
kubectl get endpoints web-app-service
```

### Step 6: Inspect Pod Labels

```powershell
kubectl get pods --show-labels
```

The Service selector `app: web-app` should match
the labels on the application Pods.

### Step 7: View Application Logs

```powershell
kubectl logs deployment/web-app-deployment
```

### Step 8: Access the Application

```powershell
kubectl port-forward service/web-app-service 8085:80
```

Open the following URL:

http://localhost:8085

Expected output:

Hello Kubernetes! Flask application is running.

### Step 9: Clean Up

Stop port-forward using Ctrl+C, then run:

```powershell
kubectl delete -f k8s-manifests/web-service.yaml
kubectl delete -f k8s-manifests/web-deployment.yaml
```

## Result
Successfully created a Kubernetes NodePort Service
to expose a Flask application running in two Pods.
Verified the Service, endpoints, Pod labels, logs,
and application access through port forwarding.