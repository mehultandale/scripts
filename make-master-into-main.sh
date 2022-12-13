# Get remote
echo ">> Enter your remote URL:"
read remote_name

# Add remote
echo ">> Adding your remote URL as 'origin'"
git remote add origin remote_name

# Rename master to main
echo ">> Rename master branch to main branch"
git branch -m master main

# Setting git configuration
git config pull.rebase false

# Getting updates
git pull origin main --allow-unrelated-histories

# Create main branch
echo ">> Creating main branch"
git push -u origin main

# Delete master branch
echo ">> Deleting master branch"
git push origin --delete master
