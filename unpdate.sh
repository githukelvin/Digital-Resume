#!/bin/bash

# Check for changes in the repository
if git diff-index --quiet HEAD --; then
    echo "No changes detected."
else
    # Generate a random branch name
    branch_name="branch_$RANDOM"

    # Create a new branch with the random name
    git branch $branch_name

    # Checkout the new branch
    git checkout $branch_name

    echo "Changes detected, created new branch $branch_name"
	
	git push --set-upstream origin $branch_name
	
	echo "Changes Pushed to the new branch"
fi

