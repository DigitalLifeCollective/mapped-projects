#!/usr/bin/env bash

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_files() {
  git checkout -b development
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
 git push  https://${GITHUB_TOKEN}@github.com/DigitalLifeCollective/mapped-projects.git development
}

setup_git
commit_files
upload_files