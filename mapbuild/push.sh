#!/usr/bin/env bash
git config user.email "travis@travis.org"
git config user.name "Travis CI"

git add .
git commit --message "Travis build"
git push -q https://${GITHUB_TOKEN}@github.com/DigitalLifeCollective/mapped-projects.git development


