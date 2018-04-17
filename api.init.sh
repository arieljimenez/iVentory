#!/bin/bash
echo '+------------------+'
echo '+  Runing the API  +'
echo '+------------------+'
dev_appserver.py ./src/appengine/app.yaml \
    --port=8090 \
    --host=0.0.0.0 \
    --admin_port=8091 \
    --admin_host=0.0.0.0 \
    --api_port 9000 \
    --skip_sdk_update_check
