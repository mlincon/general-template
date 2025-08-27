#!/bin/bash

# update commits
git pull --rebase --all

# clean old branches
git fetch --prune
# git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d

# # pull the latest dump
dvc pull

# clean up docker
docker system prune -f -a --volumes
