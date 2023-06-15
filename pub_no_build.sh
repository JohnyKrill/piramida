#!/bin/bash

echo 'Building project'
npm run build

echo 'Prepearing to git upload'
git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

git push

echo 'Uploading to git pages'
npm run upload

read
