#!/bin/bash

cp mag_work.tex mag_work_for_doc.tex

sed -i "s/\\\\todo{.*}//g" mag_work_for_doc.tex; 

suffix='^a-zA-Z'
while read from to; do
  sed -i "s/${from:1:-1}\([${suffix}]\)/${to:1:-1}\1/g" mag_work_for_doc.tex; 
done < replacements.txt 
