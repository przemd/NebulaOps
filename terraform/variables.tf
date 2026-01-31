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
