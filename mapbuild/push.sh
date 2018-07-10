#!/usr/bin/env bash
cd ../
git add .
git commit --message "Travis build"
git push origin HEAD:development


