#!/usr/bin/env bash

git add .
git commit --message "Travis build"
git push -q https://${GITHUB_TOKEN}@github.com/DigitalLifeCollective/mapped-projects.git development


