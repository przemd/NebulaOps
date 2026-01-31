terraform {
  backend "azurerm" {
    resource_group_name  = "nebulaops-state-rg"
    storage_account_name = "nebulaopsstate"
    container_name       = "tfstate"
    key                  = "starforge.terraform.tfstate"
  }
}
