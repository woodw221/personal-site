

variable "project_name" {
  description = "Name"
  type        = string
  default     = "personal-site"
}

variable "azure_location" {
  description = "Azure region"
  type        = string
  default     = "East US 2"
}

variable "domain_name" {
  description = "Domain"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
  sensitive   = true
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
}

variable "arm_subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}