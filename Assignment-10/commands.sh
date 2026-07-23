# Build the updated Docker image
docker build -t my-flask-app:v2 .

# Create a Docker volume
docker volume create my-app-data

# Run the container with the mounted volume
docker run -d -p 8082:5001 -v my-app-data:/app/data --name flask-volume-demo my-flask-app:v2

# Stop the running container
docker stop flask-volume-demo

# Remove the stopped container
docker rm flask-volume-demo

# Start a new container using the same volume
docker run -d -p 8082:5001 -v my-app-data:/app/data --name flask-volume-demo2 my-flask-app:v2