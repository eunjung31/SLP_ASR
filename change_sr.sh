#!/bin/bash

#This script converts sampling rate of multiple files in a folder.

outputdir="../converted"
mkdir -p $outputdir 

for file in **/*.wav
do
    filename=$(basename $file)    
    outputfile="${outputdir}/${file}"
    mkdir -p $(dirname $outputfile)
    
    sox $file -r 8k $outputfile
done
