#!/bin/sh

for d in $(find .. -name 'package.json' | grep -v 'node_modules' | sed 's/\/package\.json//g'); do
cd $d
echo "NPM Installing $d ...";
npm install
cd -; done
