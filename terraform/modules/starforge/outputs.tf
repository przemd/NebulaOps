output "resource_group_name" {
  description = "Starforge resource group name."
  value       = azurerm_resource_group.starforge.name
}

output "automation_account_name" {
  description = "Automation Account name."
  value       = azurerm_automation_account.starforge.name
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID."
  value       = azurerm_log_analytics_workspace.starforge.id
}
