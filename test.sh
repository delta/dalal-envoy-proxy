#!/bin/bash

cp .sample.env .env

if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

sed "s/DALAL_BACKEND_HOST/$DALAL_BACKEND_HOST/g; s/DALAL_BACKEND_PORT/$DALAL_BACKEND_PORT/g" dev.envoy.yaml > envoy.yaml

envoy --mode validate -c envoy.yaml
