#!/bin/bash

cd /Users/jeenhyung-mac/develop/github_storage/myrepo/node-sample-release
git reset --hard HEAD^
git pull
npm install
pm2 stop node-sample
pm2 start src/app.js --name "node-sample"
