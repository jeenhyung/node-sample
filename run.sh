#!/usr/bin/env bash
if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
 export NODE_ENV=$DEPLOYMENT_GROUP_NAME
fi

cd ~/node
/usr/local/bin/pm2 start src/app.js -n sample-node -i 0
/usr/local/bin/node src/app.js