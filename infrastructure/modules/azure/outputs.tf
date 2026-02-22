

output "static_web_app_url" {
  value = azurerm_static_web_app.personal_site.default_host_name
}

output "static_web_app_api_key" {
  value     = azurerm_static_web_app.personal_site.api_key
  sensitive = true
}

output "domain_validation_token" {
  value     = azurerm_static_web_app_custom_domain.personal_site.validation_token
  sensitive = true
}