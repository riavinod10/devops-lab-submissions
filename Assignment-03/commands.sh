# Switch to the main branch
git checkout main

# Verify repository status
git status

# Create and switch to a new branch
git checkout -b conflicting-feature

# Edit README.md (change the first line)
# Save the file

# Stage the modified README
git add README.md

# Commit changes on the feature branch
git commit -m "Update README first line on feature branch"

# Switch back to the main branch
git checkout main

# Edit README.md differently (change the same first line)
# Save the file

# Stage the modified README
git add README.md

# Commit changes on the main branch
git commit -m "Update README first line on main"

# Attempt to merge the feature branch
git merge conflicting-feature

# Verify the merge conflict
git status

# Resolve the conflict manually in README.md
# Remove conflict markers and save the file

# Stage the resolved file
git add README.md

# Verify all conflicts are resolved
git status

# Complete the merge
git commit -m "Merge conflicting-feature, resolve README conflict"

# Push changes to GitHub
git push origin main