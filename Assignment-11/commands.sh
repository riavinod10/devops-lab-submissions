# Create project directory
mkdir my-multi-app

# Navigate to the project directory
cd my-multi-app

# Start the multi-container application
docker compose up -d

# Verify running containers
docker compose ps

# (Alternative if docker compose ps is unavailable)
docker ps

# Stop and remove the application
docker compose down