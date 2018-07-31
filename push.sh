#!/bin/sh

setup_git() {
  git config --global user.email "tyarkoni@gmail.com"
  git config --global user.name "Tal Yarkoni"
}

commit_website_files() {
  git checkout master
  git add README.md
  git commit --message "Updating README from Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/neurohackademy/2018_materials.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master
}

setup_git
commit_website_files
upload_files