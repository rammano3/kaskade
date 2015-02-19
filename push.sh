#!/bin/bash
for dir in ../*/; do
  echo "Git pushing ${dir}."
  pushd "${dir}" >/dev/null
  git push origin master
  popd >/dev/null
done
