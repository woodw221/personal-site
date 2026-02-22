

terraform {
    required_providers {

        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 4.0"
        }

        cloudflare = {
            source = "cloudflare/cloudflare"
            version = "~> 4.0"
        }
    }

    backend "azurerm" {
        resource_group_name = "personal-site-rg"
        storage_account_name = "personalsitestore"
        container_name = "personal-site"
        key = "portfolio.tfstate"
    }
}

provider "azurerm" {
    features {}
    subscription_id = var.arm_subscription_id
}

provider "cloudflare" {
    api_token = var.cloudflare_api_token
}