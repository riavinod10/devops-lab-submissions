# Verify Docker installation
docker --version

# Check running Docker containers
docker ps

# Create and start the Jenkins container
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name myjenkins jenkins/jenkins:lts-jdk17

# View Jenkins logs
docker logs myjenkins

# Retrieve the initial administrator password
docker exec myjenkins cat /var/jenkins_home/secrets/initialAdminPassword

# Execute Shell Build Commands
echo "BUILDING: ${JOB_NAME}"
echo "BUILD NUMBER: ${BUILD_NUMBER}"
echo "WORKSPACE: ${WORKSPACE}"
ls -la
echo "Hello Jenkins!"