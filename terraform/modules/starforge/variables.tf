variable "location" {
  description = "Azure region for the Starforge landing zone."
  type        = string
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
}

variable "resource_prefix" {
  description = "Prefix for all resources."
  type        = string
}

variable "stardate_tag" {
  description = "Stardate tag in yyyy-mm format."
  type        = string
}

variable "extra_tags" {
  description = "Additional tags to merge with the base tags."
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
