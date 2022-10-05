#!/bin/sh

export WEBAPI_URL=https://${HOST}${NB_PREFIX}/WebAPI/
echo $WEBAPI_URL
./docker-entrypoint.sh nginx -g 'daemon off;'
echo $WEBAPI_URL
