#!/bin/bash

#commit and push to guthub

git add -A *
git commit -m "`date -Ru`"
git push origin master
echo "done"

