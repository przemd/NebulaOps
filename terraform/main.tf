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

  location         = var.location
  environment      = var.environment
  resource_prefix  = var.resource_prefix
  stardate_tag     = var.stardate_tag
  extra_tags       = var.extra_tags
}
