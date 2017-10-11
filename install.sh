#!/usr/bin/env bash
set -e

# update instance
yum -y update

# install general libraries like Java or ImageMagick
yum -y install default-jre ImageMagick

# add nodejs to yum
#curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
#yum -y install nodejs #default-jre ImageMagick
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash    # for amazon linux
. ~/.nvm/nvm.sh
nvm install 6.9.1
node -e "console.log('Running Node.js ' + process.version)"

# ln -s ~/.nvm/versions/node/v6.9.1/bin/node /usr/local/bin/node
# ln -s ~/.nvm/versions/node/v6.9.1/bin/node /usr/bin/node
# ln -s ~/.nvm/versions/node/v6.9.1/bin/pm2 /usr/local/bin/pm2
# ln -s ~/.nvm/versions/node/v6.9.1/bin/pm2 /usr/bin/pm2
# ln -s ~/.nvm/versions/node/v6.9.1/bin/npm /usr/local/bin/pm2
# ln -s ~/.nvm/versions/node/v6.9.1/bin/npm /usr/bin/pm2

# install pm2 module globaly
npm install -g pm2
pm2 update

cd ~/node
npm install