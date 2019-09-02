#!/bin/bash

#
# Install/upgrade diff-so-fancy
#

. setup/github-software/setup.sh

diff_so_fancy_version=$(github_release so-fancy/diff-so-fancy)

echo "Installing diff-so-fancy $diff_so_fancy_version"
curl -sL https://github.com/so-fancy/diff-so-fancy/archive/$diff_so_fancy_version.tar.gz -o /tmp/diff-so-fancy.tar.gz
mkdir /tmp/diff-so-fancy
tar -xzf /tmp/diff-so-fancy.tar.gz -C /tmp
sudo cp /tmp/diff-so-fancy*/third_party/build_fatpack/diff-so-fancy /usr/local/bin/
sudo chmod +x /usr/local/bin/diff-so-fancy
sudo rm -rf /tmp/diff-so-fancy*
