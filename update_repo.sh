#!/bin/bash

# Build the Jupyter Book
jupyter-book build C:\Users\prima\Actuareal

# Fetch and pull the latest changes from the remote repository
git fetch origin
git pull origin main

# Stage all changes
git add .

# Commit the changes with a message
git commit -m "Book update"

# Push the changes to the remote repository
git push origin main

# Publish the book to GitHub Pages
ghp-import -n -p -f _build/html
