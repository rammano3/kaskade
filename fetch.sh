#!/bin/bash

origin=$(pwd)

for dir in ../*/; do
  echo "Git pulling $dir."
  cd $dir
  git fetch upstream
  git rebase upstream/master
  cd $origin
done
