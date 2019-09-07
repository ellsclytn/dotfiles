#!/bin/bash

# Send a request to GitHub API with authentication (where available)
github_request () {
  if [ -z ${GITHUB_REPO_READ_TOKEN+x} ]; then
    curl -s "https://api.github.com/$1"
  else
    headers="Authorization: token $GITHUB_REPO_READ_TOKEN"
    curl -H "$headers" -s "https://api.github.com/$1"
  fi
}

export -f github_request
