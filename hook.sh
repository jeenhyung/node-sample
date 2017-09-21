#!/bin/bash

cd /Users/jeenhyung-mac/develop/github_storage/myrepo/node-sample-release
git reset --hard HEAD^
git pull
pm2 restart node-sample
#pm2 stop node-sample # replace futsal to your pm2 project name 
#pm2 start node-sample # replace futsal to your pm2 project name 
