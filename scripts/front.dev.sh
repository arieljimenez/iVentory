#!/bin/ash

cd /app

npm install && \
elm package install -y

echo '+------------------+'
echo '+ Runing Front Dev +'
echo '+------------------+'
npm run watch
