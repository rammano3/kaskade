#!/bin/bash

for dir in */; do
  if [ -f "$dir/package.json" ]; then
    echo "NPM installing $dir."
    cd $dir
    npm install
    cd ..
  elif [ -f "$dir/pom.xml" ]; then
    echo "Maven build on $dir."
    cd $dir
    mvn
    cd ..
  fi
done
