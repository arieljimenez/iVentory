#!/bin/bash
echo '+------------------+'
echo '+ Runing Front Dev +'
echo '+------------------+'

npm run dev & sleep 5 &&

echo '+------------------+'
echo '+  Runing the API  +'
echo '+------------------+'

dev_appserver.py ./src/api/app.yaml \
    --port=8090 \
    --host=0.0.0.0 \
    --admin_port=8091 \
    --admin_host=0.0.0.0 \
    --api_port 9000 \
    --skip_sdk_update_check
