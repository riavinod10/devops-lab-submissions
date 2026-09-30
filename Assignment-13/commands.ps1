# Assignment 13: Kubernetes Service and Networking

# Step 1: Check Kubernetes
kubectl version --client
kubectl cluster-info
kubectl get nodes

# Step 2: Build the Docker image
docker build -t my-flask-app:v2 .

# Step 3: Create the Deployment
kubectl apply -f k8s-manifests/web-deployment.yaml

# Step 4: Verify the Pods
kubectl get pods
kubectl get deployments

# Step 5: Create the Kubernetes Service
kubectl apply -f k8s-manifests/web-service.yaml

# Step 6: Display available Services
kubectl get services

# Step 7: Display detailed Service information
kubectl describe service web-app-service

# Step 8: Display Service endpoints
kubectl get endpoints web-app-service

# Step 9: Display Pods and their labels
kubectl get pods --show-labels

# Step 10: View application logs
kubectl logs deployment/web-app-deployment

# Step 11: Forward the Service to your local machine
kubectl port-forward service/web-app-service 8085:80

# Keep this command running.
# Open http://localhost:8085 in your browser.

# Step 12: Cleanup after taking screenshots
# Stop port-forward using Ctrl+C first.
# Then run these commands separately:
# kubectl delete -f k8s-manifests/web-service.yaml
# kubectl delete -f k8s-manifests/web-deployment.yaml