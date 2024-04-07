#!/bin/bash
# TODO: Check if the script is running on docker container or outside.
echo "Installing bash..."
apk add bash

echo "Installing dependiencies"
npm install --save
#npm install /medusa-payment-mercadopago
rm -rf /app/node_modules/medusa-payment-mercadopago/node_modules/@medusajs

if [ $ENV = "prod" ]; then
  echo "------------ PRODUCTION MODE ------------"
  echo "Not implemented yet."
else
  echo "------------ DEVELOPMENT MODE ------------"
  #npx medusa migrations run
  #npx medusa user --email "$ADMIN_EMAIL" --password "$ADMIN_PASSWORD"
  npx medusa develop
fi
