#!/bin/sh

SOURCE_DIR="/home/david/Code/while-true-make-games"
DEPLOY_DIR="/home/david/Code/while-true-make-games-page"

SAVED_DIR="$(pwd)"

cd $SOURCE_DIR
jekyll build

cd $DEPLOY_DIR
rm -Rf ./*
cp -r $SOURCE_DIR/_site/* .
git add .
git commit -m "Automatic deploy"
git push

cd $SAVED_DIR

