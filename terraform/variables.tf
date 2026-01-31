variable "location" {
  description = "Azure region for the NebulaOps constellation."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "resource_prefix" {
  description = "Prefix for naming resources."
  type        = string
  default     = "nebula"
}

variable "stardate_tag" {
  description = "Stardate tag in yyyy-mm format."
  type        = string
  default     = "2024-01"
}

variable "extra_tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}

variable "log_analytics_sku" {
  description = "SKU for the Log Analytics workspace."
  type        = string
  default     = "PerGB2018"
}

variable "log_retention_in_days" {
  description = "Retention in days for Log Analytics."
  type        = number
  default     = 30
}

variable "storage_replication_type" {
  description = "Replication type for the storage account."
  type        = string
  default     = "LRS"
}

variable "automation_sku" {
  description = "SKU for the Automation Account."
  type        = string
  default     = "Basic"
}
