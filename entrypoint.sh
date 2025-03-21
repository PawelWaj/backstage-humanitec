#!/bin/sh
set -e

# Replace "humanitec.com/orgId" with the value of HUMANITEC_ORG_ID
sed -i "s/\"humanitec.com\/orgId\": \".*\"/\"humanitec.com\/orgId\": \"${HUMANITEC_ORG_ID}\"/" catalog-info.yaml

# Execute the original command
exec node packages/backend --config app-config.yaml