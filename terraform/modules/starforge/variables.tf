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
