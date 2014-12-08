#!/bin/bash

# clean
rm -rf bin/
mkdir bin
rm -rf lib/
mkdir lib

# compile java files
find src/ -name "*.java" | xargs javac -classpath ~/libs/javaee-api-7.0.jar -d bin/

(cd bin
find -type f | xargs jar cf ../lib/example.jar
)

(cd res/jar
find -type f | xargs jar uf ../../lib/example.jar
)

(cd res/ear
find -type f | xargs jar cf ../../lib/example.ear
)

(cd lib
jar uf example.ear example.jar
)
