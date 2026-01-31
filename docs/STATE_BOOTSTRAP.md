# Remote State Bootstrap

Use this guide to create Azure Storage for Terraform state.

## Scripted bootstrap
```bash
export AZURE_LOCATION="eastus"
export STATE_RESOURCE_GROUP="nebulaops-state-rg"
export STATE_STORAGE_ACCOUNT="nebulaopsstate"
export STATE_CONTAINER="tfstate"

./scripts/bootstrap-state.sh
```

## Manual bootstrap (CLI)
```bash
az group create --name nebulaops-state-rg --location eastus
az storage account create --name nebulaopsstate --resource-group nebulaops-state-rg --location eastus --sku Standard_LRS --kind StorageV2 --allow-blob-public-access false
az storage container create --name tfstate --account-name nebulaopsstate
```

## Backend wiring
Update `terraform/backend.tf` with the resource group, storage account, and container values, then run:
```bash
cd terraform
terraform init
```
