#!/bin/bash
echo '+------------------+'
echo '+ Runing Front Dev +'
echo '+------------------+'

npm run dev & \
    npm run api
