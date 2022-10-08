#!/usr/bin/env bash

# This script is used to deploy the react app to github-pages
# It is called by the npm script "deploy"

git checkout gh-pages # a new branch gh-pages is created if it doesn't exist

git reset --hard master # reset the gh-pages branch to the master branch

npm install # install the dependencies

npm run build # build the app

find * -maxdepth 0 -name 'build' -prune -o -exec rm -rf {} \; # remove all files except the build folder

mv build/* . # move the build folder contents to the root folder

git rm -rf --cache . # remove all files from the git index

git add . # add all files to the git index

git commit -m "Deploy to gh-pages" # commit the changes

git checkout master # switch back to the master branch


