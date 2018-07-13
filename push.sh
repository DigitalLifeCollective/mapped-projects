#!/usr/bin/env bash

#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_files() {
  git checkout -b travis-build
  git add --all .
  git commit --message "Travis build [skip ci]"
}

upload_files() {
  git push origin HEAD:travis-build-travis-build
}

setup_git
commit_files
upload_files


