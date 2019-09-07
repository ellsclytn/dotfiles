#!/bin/bash
#
# Install/update Wire
# https://wire.com/en/

set -e

. setup/software/setup.sh

echo "Installing Wire..."
gh_response=$(github_request repos/wireapp/wire-desktop/releases)
url=$(echo $gh_response | jq -r '[.[] | {tag_name: .tag_name, assets: .assets} | select(.tag_name | contains("linux"))][0].assets[].browser_download_url | select(. | contains("AppImage"))')
sudo curl -L -# $url -o /usr/local/bin/wire
sudo chmod +x /usr/local/bin/wire

echo "Wire installed at /usr/local/bin/wire"
