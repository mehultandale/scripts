echo "Starting git repository's commit reset"
echo "Switching to a temporary branch: main_temp"
git checkout --orphan main_temp

echo "Adding all the files, except this script file"
git add --all -- :!git_wipe_commits.sh

echo "Adding initial commit message"
git commit -am "> Initial commit"

echo "Deleting the main branch"
git branch -D main

echo "Renaming the current branch to main"
git branch -m main

echo "Updating the repository"
git push -f origin main

echo "Git repo free of commits!"
