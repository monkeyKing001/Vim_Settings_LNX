#!/bin/bash
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)

cp ./.vimrc ./backup_vimrc/.vimrc-${year}-${month}-${day}
mv ~/.vimrc ./vimrc

git add .
git commit -m "${year}-${month}-${day}"
git push origin main
