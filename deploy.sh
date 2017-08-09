#!/bin/bash
set -e # Exit with nonzero exit code if anything fails
set -v # echo on

# remove previous publication
rm -rf dist
mkdir dist

# clone gh-pages branch from the local repo into a repo located within "dist"
git clone .git --branch master dist

make build

# commit the changes in the clone and push them back to the local gh-pages branch
cd dist && git add --all && git commit -m "Publishing to master" && git push --force origin master

# publish
git push origin master
