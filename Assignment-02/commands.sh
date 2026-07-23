# Check repository status
git status

# Create and switch to a new branch
git checkout -b feature-update

# Verify available branches
git branch

# Check status after modifying README.md
git status

# Stage the modified README
git add README.md

# Commit the changes
git commit -m "Update README on feature branch"

# Verify working tree is clean
git status

# Switch back to main
git checkout main

# Verify README before merge
type README.md

# Merge the feature branch
git merge feature-update

# Verify merged README
type README.md

# Push merged changes to GitHub
git push origin main