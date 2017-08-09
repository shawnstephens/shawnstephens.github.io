#!/bin/bash
set -e # Exit with nonzero exit code if anything fails
set -v # echo on

# build the site
make build

# make yarn run the deploy script in package.json
# which calls gh-pages.
yarn run deploy
