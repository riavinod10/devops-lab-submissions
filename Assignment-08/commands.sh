# Create project directory
mkdir my-flask-app

# Navigate to the project directory
cd my-flask-app

# Build the Docker image
docker build -t my-flask-app .

# Rebuild without using cache
docker build --no-cache -t my-flask-app .

# Run the Docker container
docker run -p 5000:5000 my-flask-app