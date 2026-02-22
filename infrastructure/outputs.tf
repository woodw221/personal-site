

output "azure_url" {
  description = "Azure Static URL"
  value       = module.azure.static_web_app_url
}

output "azure_deploy_token" {
  description = "Azure deploy token"
  value       = module.azure.static_web_app_api_key
  sensitive   = true
}

output "domain_validation_token" {
  description = "TXT record value"
  value       = module.azure.domain_validation_token
  sensitive   = true
}