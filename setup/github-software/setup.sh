#!/bin/bash

# Get version of latest release of a GitHub repository
github_release () {
  curl -s "https://api.github.com/repos/$1/releases/latest" | jq -r '.tag_name'
}

export -f github_release
