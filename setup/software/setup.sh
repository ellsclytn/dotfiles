#!/bin/bash

# Send a request to GitHub API with authentication (where available)
github_request () {
  headers=""
  if [ -n ${GITHUB_REPO_READ_TOKEN+x} ]; then
    headers="Authorization: token $GITHUB_REPO_READ_TOKEN"
  fi

  curl -H "$headers" -s "https://api.github.com/$1"
}

export -f github_request
