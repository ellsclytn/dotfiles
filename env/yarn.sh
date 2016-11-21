#!/bin/bash

export PATH="$PATH:$HOME/.yarn/bin"
for d in ~/.nvm/versions/node/v*/bin; do export PATH="$PATH:$d"; done
