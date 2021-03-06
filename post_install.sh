
#!/usr/bin/env bash
# set -e

# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash    # for amazon linux
# . ~/.nvm/nvm.sh
# nvm install 6.9.1
# node -e "console.log('Running Node.js ' + process.version)"

# cd ~/node
# npm install --save pm2
# # install pm2 module globaly
# npm install -g pm2
# pm2 update

cd ~/node
npm install

############################################################

# cd ~
# wget http://nodejs.org/dist/v6.9.1/node-v6.9.1.tar.gz
# tar xzvf node-v6.9.1.tar.gz
# cd node-v6.9.1
# ./configure
# make && make install

# cd ~/node
# npm install -g pm2
# pm2 update
# npm install

# setup NODE_ENV
if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
    export NODE_ENV=$DEPLOYMENT_GROUP_NAME

    hasEnv=`grep "export NODE_ENV" ~/.bash_profile | cat`
    if [ -z "$hasEnv" ]; then
        echo "export NODE_ENV=$DEPLOYMENT_GROUP_NAME" >> ~/.bash_profile
    else
        sed -i "/export NODE_ENV=\b/c\export NODE_ENV=$DEPLOYMENT_GROUP_NAME" ~/.bash_profile
    fi
fi

# add node to startup
hasRc=`grep "su -l $USER" /etc/rc.d/rc.local | cat`
if [ -z "$hasRc" ]; then
    sudo sh -c "echo 'su -l $USER -c \"cd ~/node;sh ./run.sh\"' >> /etc/rc.d/rc.local"
fi