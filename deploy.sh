#!/bin/sh

SOURCE_DIR="/home/david/Code/while-true-make-games"
DEPLOY_DIR="/home/david/Code/while-true-make-games-page"

SAVED_DIR="$(pwd)"

echo "=============================================="
echo "Build jekyll page"
echo "=============================================="
cd $SOURCE_DIR
jekyll build

echo "=============================================="
echo "Copy page content"
echo "=============================================="
cd $DEPLOY_DIR
rm -Rf ./*
cp -r $SOURCE_DIR/_site/* .

echo "=============================================="
echo "Push to github"
echo "=============================================="
git add .
git commit -m "Automatic deploy"
git push

cd $SAVED_DIR

