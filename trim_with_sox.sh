#!/bin/bash
# This script trim multiple audiofiles in the deep directory, using soX


DIRS=`ls -d test/*/`

for i in ${DIRS}; do
  echo "Entering $i";
  cd $i;
  mkdir -p converted;
  
  for j in *.wav; do
    # you can use any soX functions here 
    sox "$j" "converted/${j}" silence -l 1 0.1 1% -1 1.0 1% \
    silence 1 0.1 1% reverse silence 1 0.1 1% reverse
    done
    cd ../../
done
