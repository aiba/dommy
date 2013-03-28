#!/bin/bash -e

echo "\n\nNOTE: you should have incremented the version # in project.clj.\n\n"

set -x

lein clean
lein jar
lein pom
scp pom.xml target/*.jar clojars@clojars.org:

