#!/bin/sh

set -e

git_diff=$(git diff --name-only)
stashed=false

# check if only user.css was modified
if [ "$git_diff" = "user.css" ]; then
    echo "Stashing user.css changes..."
    git stash
    stashed=true
# when no files where modified
elif [ -z "$git_diff" ]; then
    echo "Pulling latest changes..."
# when other files where modified
else
   echo "You modified the following files: $git_diff. You should only modify the user.css file. Please restore or commit your changes and try again."
   exit
fi

git pull
# unstash if stashed
if [ "$stashed" = true ]; then
    git stash pop
fi

echo "Applying..."
spicetify apply -n
