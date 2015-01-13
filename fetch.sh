#!/bin/bash
for dir in ../*/; do
  echo "Git pulling ${dir}."
  pushd "${dir}" >/dev/null
  git fetch upstream
  git rebase upstream/master
  popd >/dev/null
done
