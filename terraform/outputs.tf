output "resource_group_name" {
  description = "Resource group created for NebulaOps Starforge."
  value       = module.starforge.resource_group_name
}

output "automation_account_name" {
  description = "Automation Account name for runbooks."
  value       = module.starforge.automation_account_name
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID."
  value       = module.starforge.log_analytics_workspace_id
}

output "storage_account_name" {
  description = "Storage account name."
  value       = module.starforge.storage_account_name
}

output "log_analytics_workspace_name" {
  description = "Log Analytics Workspace name."
  value       = module.starforge.log_analytics_workspace_name
}
