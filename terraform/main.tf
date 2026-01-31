terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
  }
}

provider "azurerm" {
  features {}
}

module "starforge" {
  source = "./modules/starforge"

  location                 = var.location
  environment              = var.environment
  resource_prefix          = var.resource_prefix
  stardate_tag             = var.stardate_tag
  extra_tags               = var.extra_tags
  log_analytics_sku        = var.log_analytics_sku
  log_retention_in_days    = var.log_retention_in_days
  storage_replication_type = var.storage_replication_type
  automation_sku           = var.automation_sku
}
