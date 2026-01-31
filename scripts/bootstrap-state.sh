#!/usr/bin/env bash
set -euo pipefail

location="${AZURE_LOCATION:-eastus}"
resource_group="${STATE_RESOURCE_GROUP:-nebulaops-state-rg}"
storage_account="${STATE_STORAGE_ACCOUNT:-nebulaopsstate}"
container="${STATE_CONTAINER:-tfstate}"

if ! command -v az >/dev/null 2>&1; then
  echo "Azure CLI (az) is required to bootstrap remote state." >&2
  exit 1
fi

az group create --name "$resource_group" --location "$location" --output none

az storage account create \
  --name "$storage_account" \
  --resource-group "$resource_group" \
  --location "$location" \
  --sku Standard_LRS \
  --kind StorageV2 \
  --allow-blob-public-access false \
  --output none

account_key=$(az storage account keys list \
  --resource-group "$resource_group" \
  --account-name "$storage_account" \
  --query '[0].value' \
  --output tsv)

az storage container create \
  --name "$container" \
  --account-name "$storage_account" \
  --account-key "$account_key" \
  --output none

echo "State storage ready: $resource_group / $storage_account / $container"
