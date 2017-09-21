#!/bin/bash

cd /Users/jeenhyung-mac/develop/github_storage/myrepo/node-sample-release
git reset --hard HEAD^
git pull
pm2 restart node-sample

