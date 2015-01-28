#!/bin/bash
for dir in ../*/; do
  echo "Git checking diff ${dir}."
  pushd "${dir}" >/dev/null
  git diff
  popd >/dev/null
done
