#!/bin/sh

set -e

git_diff=$(git diff --name-only)
stashed=false

# check if only user.css was modified
if [ "$git_diff" = "user.css" ]; then
    echo "Stashing user.css changes"
    git stash
    stashed=true
# when no files where modified
elif [ -z "$git_diff" ]; then
    echo "Pulling latest changes..."
# when other files where modified
else
    echo "You modified the following files:"
    echo "$git_diff"
    echo "You should only modify the user.css file. Please restore or commit your changes and try again."
    exit
fi

git pull
# unstash if stashed
if [ "$stashed" = true ]; then
    echo "Trying to restore your changes to user.css"
    git stash pop
    return_code=$?
    if [ $return_code -ne 0 ]; then
        echo "Failed to restore your changes to user.css"
        cp user.css user.css.bak
        git restore --staged user.css
        git restore user.css
        echo "Saved a copy of the conflicted user.css file to user.css.bak and restored the original"
        exit
    else
        echo "Restored user.css changes successfully"
    fi
fi

echo "Applying"
spicetify apply

echo "All done!"
