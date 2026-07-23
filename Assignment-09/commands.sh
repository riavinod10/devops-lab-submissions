# Run the container in detached mode with port mapping
docker run -d -p 8081:5000 --name flask-network-demo my-flask-app

# List running containers
docker ps

# Stop the running container
docker stop flask-network-demo

# List all containers
docker ps -a

# Inspect the container
docker inspect flask-network-demo

# Remove the stopped container
docker rm flask-network-demo

# Verify the container has been removed
docker ps -a