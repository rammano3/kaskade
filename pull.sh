#!/bin/bash

for dir in */; do
  echo "Git pulling $dir."
  cd $dir
  git fetch
  if [ "$dir" = "mission-control/" ]; then
    git rebase origin/development
  else
    git rebase origin/master
  fi
  cd ..
done
