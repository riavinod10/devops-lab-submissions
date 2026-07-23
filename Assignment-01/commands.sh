# Navigate to the directory
cd D:\CCodes

# Clone the GitHub repository
git clone https://github.com/riavinod10/devops-lab.git

# Enter the repository
cd devops-lab

# Create README.md
echo "# DevOps Lab" > README.md

# Check repository status
git status

# Stage the README file
git add README.md

# Verify staged changes
git status

# Commit the changes
git commit -m "Add initial README.md file"

# Verify working tree
git status

# Push to GitHub
git push origin main