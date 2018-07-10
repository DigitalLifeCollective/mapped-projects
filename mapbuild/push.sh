#!/usr/bin/env bash
cd ../
git checkout -b development
git add .
git commit --message "Travis build"
git remote add . https://${GITHUB_TOKEN}@github.com/DigitalLifeCollective/mapped-projects
git push origin HEAD:development


