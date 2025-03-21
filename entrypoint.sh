#!/bin/sh
set -e

# Debugging: Print PATH to verify Node.js is available
echo "Current PATH: $PATH"
which node || { echo "Error: Node.js not found in PATH"; exit 1; }

# Replace "humanitec.com/orgId" with the value of HUMANITEC_ORG_ID
sed -i "s/\"humanitec.com\/orgId\": \".*\"/\"humanitec.com\/orgId\": \"${HUMANITEC_ORG_ID}\"/" catalog-info.yaml

# Execute the original command
exec node packages/backend --config app-config.yaml