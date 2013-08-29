git commit -a -m "pushing new version at $(date)"
git status
jekyll build --destination ../_site
git checkout gh-pages
rm -rf *
cp -rf ../_site/* .
git add .
git commit -a -m "pushing new version at $(date)"
# sync with GitHub.app
open -a GitHub
# once it's done, go back to the master branch
git checkout master
# sync with GitHub.app
open -a GitHub
