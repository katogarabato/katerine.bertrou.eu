#!/bin/bash
export EDITOR=vim
git add --all
git commit -a 
git status
jekyll build --destination ../_site
git checkout gh-pages
rm -rf *
cp -rf ../_site/* .
git add .
git commit -a -m "pushing new version at $(date)"
# once it's done, go back to the master branch
git checkout master
# sync with GitHub.
git push origin
