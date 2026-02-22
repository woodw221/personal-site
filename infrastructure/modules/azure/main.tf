

resource "azurerm_resource_group" "personal_site" {
  name     = "${var.project_name}-rg"
  location = var.location
}

resource "azurerm_static_web_app" "personal_site" {
  name                = "${var.project_name}-static-site"
  resource_group_name = azurerm_resource_group.personal_site.name
  location            = azurerm_resource_group.personal_site.location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    environment = "production"
    project     = var.project_name
  }
}

resource "azurerm_static_web_app_custom_domain" "personal_site" {
  static_web_app_id = azurerm_static_web_app.personal_site.id
  domain_name       = var.domain_name
  validation_type   = "dns-txt-token"
}