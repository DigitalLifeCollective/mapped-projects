#!/usr/bin/env bash

#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_files() {
  git checkout -b travis-build:$TRAVIS_BUILD_NUMBER
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
}

upload_files() {

  git push --quiet --set-upstream origin HEAD travis-build:$TRAVIS_BUILD_NUMBER
}

setup_git
commit_files
upload_files