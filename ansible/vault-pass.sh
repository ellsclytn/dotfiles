#!/usr/bin/env bash
set -euo pipefail

pass keys/dotfiles-ansible | tr -d '\n'
