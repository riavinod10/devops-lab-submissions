# Assignment 12: Kubernetes Pod and Deployment

# Step 1: Check kubectl
kubectl version --client

# Step 2: Check the Kubernetes cluster
kubectl cluster-info

# Step 3: Check available nodes
kubectl get nodes

# Step 4: Build the Docker image
docker build -t my-flask-app:v2 .

# Step 5: Apply the Kubernetes Deployment
kubectl apply -f k8s-manifests/web-deployment.yaml

# Step 6: Verify the Deployment
kubectl get deployments

# Step 7: Check the Pods
kubectl get pods

# Step 8: View Deployment details
kubectl describe deployment web-app-deployment

# Step 9: Access the application
kubectl port-forward deployment/web-app-deployment 5001:5001

# Open http://localhost:5001 in your browser.
# Keep the port-forward command running while testing.

# Step 10: Cleanup after taking screenshots
# First stop port-forward using Ctrl+C.
# Then uncomment and run the following command:
# kubectl delete -f k8s-manifests/web-deployment.yaml