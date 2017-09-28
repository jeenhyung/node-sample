#!/usr/bin/env bash
set -e

# update instance
yum -y update

# install general libraries like Java or ImageMagick
yum -y install default-jre ImageMagick

# # add nodejs to yum
# #curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
# #yum -y install nodejs #default-jre ImageMagick
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash    # for amazon linux
# . ~/.nvm/nvm.sh
# nvm install 6.9.1
# node -e "console.log('Running Node.js ' + process.version)"


# # install pm2 module globaly
# npm install -g pm2
# pm2 update

# # cd ~/node
# # /home/ec2-user/.nvm/versions/node/v6.9.1/lib/node_modules/npm/bin/npm-cli.js install