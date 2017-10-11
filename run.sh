#!/usr/bin/env bash
# if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
#  export NODE_ENV=$DEPLOYMENT_GROUP_NAME
# fi

cd ~/node
./node_modules/pm2/bin/pm2 start src/app.js -n sample-node -i 0