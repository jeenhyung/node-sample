#!/bin/bash

cd /Users/jeenhyung-mac/develop/github_storage/myrepo/node-sample-release
git reset --hard HEAD^
git pull
node src/app.js
#npm install
#pm2 restart node-sample

