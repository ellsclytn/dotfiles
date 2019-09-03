#!/bin/bash

#
# Install/upgrade git-open
# https://github.com/paulirish/git-open
#

. setup/github-software/setup.sh

git_open_version=$(github_release paulirish/git-open)

echo "Installing git-open $git_open_version"
curl -sL https://github.com/paulirish/git-open/archive/$git_open_version.tar.gz -o /tmp/git-open.tar.gz
mkdir /tmp/git-open
tar -xzf /tmp/git-open.tar.gz -C /tmp
sudo cp /tmp/git-open*/git-open /usr/local/bin/
sudo chmod +x /usr/local/bin/git-open
sudo rm -rf /tmp/git-open*
