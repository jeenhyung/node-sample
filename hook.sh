#!/bin/bash

cd /Users/jeenhyung-mac/develop/github_storage/myrepo/node-sample-release
git reset --hard HEAD^
git pull
npm install
/usr/local/bin/pm2 restart node-sample

