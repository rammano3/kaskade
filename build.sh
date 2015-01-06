#!/bin/bash

for d in $(find .. -name 'pom.xml' | grep -v 'node_modules' | sed 's/\/pom\.xml//g'); do
cd $d
echo "Maven build on $d";
mvn
if [ -f install_esb_jar_to_maven.sh ]; then
  cat <<EOF

_____________________________

 INSTALLING ESB JAR TO MAVEN
_____________________________


EOF

  ./install_esb_jar_to_maven.sh
fi
cd -; done

for d in $(find .. -name 'package.json' | grep -v 'node_modules' | sed 's/\/package\.json//g'); do
cd $d
echo "NPM Installing $d";
npm install
cd -; done
