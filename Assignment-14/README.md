# Assignment 14: CI/CD — Jenkins Pipeline Building a Docker Image

## Aim
To create a Jenkins Declarative Pipeline that checks
out application source code from GitHub and builds
a Docker image automatically.

## Theory
Jenkins is an automation server used to implement
Continuous Integration and Continuous Delivery.

A Jenkins Pipeline defines stages that execute
a sequence of build tasks. In this assignment,
the pipeline checks out source code, builds a
Docker image, tags it using the Jenkins build
number, and verifies the resulting image.

Docker packages an application and its dependencies
into a portable image.

## Technologies Used
- Jenkins
- Docker
- GitHub
- Declarative Pipeline
- Python
- Flask

## Project Structure

```text
Assignment-14/
├── A14_Report.pdf
├── app.py
├── requirements.txt
├── Dockerfile
├── Jenkinsfile
├── commands.ps1
├── README.md
└── jenkins-docker/
    └── Dockerfile
```

## Implementation

### Step 1: Build the Custom Jenkins Image

```powershell
docker build -t my-jenkins-docker -f jenkins-docker/Dockerfile .
```

### Step 2: Run Jenkins

```powershell
docker run -d --name myjenkins --restart unless-stopped -u root -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock my-jenkins-docker
```

If the Jenkins container already exists, do not create
a duplicate. Start the existing container if stopped.

### Step 3: Verify Docker CLI

```powershell
docker exec -it myjenkins docker --version
```

### Step 4: Configure the Jenkins Pipeline

Open http://localhost:8080.

Create a Pipeline job and select **Pipeline script
from SCM**. Configure Git with the repository URL:

https://github.com/riavinod10/devops-lab-submissions.git

Set the branch to `*/main` and the Script Path to:

`Assignment-14/Jenkinsfile`

### Step 5: Run the Pipeline

Click **Build Now**. The pipeline performs these stages:

1. Checkout Source Code
2. Build Docker Image
3. Verify Docker Image

### Step 6: Verify the Docker Image

```powershell
docker images my-flask-app
```

The image should have a tag corresponding to the
Jenkins build number, such as `1`, and a `latest` tag.

## Pipeline Flow

```text
GitHub Repository
       |
       v
Checkout Source Code
       |
       v
Build Docker Image
       |
       v
Tag Image with Build Number
       |
       v
Verify Docker Image
       |
       v
Pipeline Success
```

## Result
A Jenkins Declarative Pipeline was configured to
check out source code, build a Docker image with a
build-number tag, and verify the image locally.