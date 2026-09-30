# Assignment 14: Jenkins Pipeline Building a Docker Image
# Run from the Assignment-14 folder.

# Step 1: Build the custom Jenkins image
docker build -t my-jenkins-docker -f jenkins-docker/Dockerfile .

# Step 2: Start Jenkins (run only if the container does not already exist)
docker run -d --name myjenkins --restart unless-stopped -u root -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock my-jenkins-docker

# Step 3: Verify the Jenkins container
docker ps

# Step 4: Verify Docker CLI inside Jenkins
docker exec -it myjenkins docker --version

# Step 5: Open Jenkins
# http://localhost:8080

# Step 6: After running the pipeline, verify the built image
docker images my-flask-app

# Optional: View Jenkins logs
docker logs myjenkins