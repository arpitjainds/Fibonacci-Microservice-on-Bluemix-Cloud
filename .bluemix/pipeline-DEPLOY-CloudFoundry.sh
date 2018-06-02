#!/bin/bash
cd service

# Push app
cf push $CF_APP

APP_ROUTE=`cf app ${CF_APP} | grep "urls:" | awk '{print $2}'`

echo "Fibonacci service available at https://${APP_ROUTE}/"
