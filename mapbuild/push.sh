#!/usr/bin/env bash

git checkout -b development
git remote add . https://${GITHUB_TOKEN}@github.com/DigitalLifeCollective/mapped-projects > /dev/null 2>&1
git commit --message "Travis build"
git push origin HEAD:development


