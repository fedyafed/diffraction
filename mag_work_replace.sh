#!/bin/bash

#sed -f mag_work.sed mag_work.tex > mag_work_for_doc.tex
cp mag_work.tex mag_work_for_doc.tex

sed -i "s/\\\\todo{.*}//g" mag_work_for_doc.tex; 

#suffix='-+{}()\^_$ ,;.1=\\^'
suffix='^a-zA-Z'
while read from to; do
  echo "${from:1:-1}"
  echo "s/${from:1:-1}\([${suffix}]\)/${to:1:-1}\1/g"
  sed -i "s/${from:1:-1}\([${suffix}]\)/${to:1:-1}\1/g" mag_work_for_doc.tex; 
  #sed -i "s/${from:1:-1}/${to:1:-1}/g" mag_work_for_doc.tex; 
done < replacements2.txt 
