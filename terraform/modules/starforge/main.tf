locals {
  name_base = "${var.resource_prefix}-${var.environment}-starforge"

  base_tags = {
    mission = "NebulaOps"
    system  = "Starforge"
    orbit   = var.environment
    stardate = var.stardate_tag
  }

  tags = merge(local.base_tags, var.extra_tags)
}

resource "azurerm_resource_group" "starforge" {
  name     = "${local.name_base}-rg"
  location = var.location
  tags     = local.tags
}

resource "azurerm_storage_account" "starforge" {
  name                     = substr(replace("${local.name_base}st", "-", ""), 0, 24)
  resource_group_name      = azurerm_resource_group.starforge.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}

resource "azurerm_log_analytics_workspace" "starforge" {
  name                = "${local.name_base}-logs"
  location            = var.location
  resource_group_name = azurerm_resource_group.starforge.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = local.tags
}

resource "azurerm_automation_account" "starforge" {
  name                = "${local.name_base}-auto"
  location            = var.location
  resource_group_name = azurerm_resource_group.starforge.name
  sku_name            = "Basic"
  tags                = local.tags
}
