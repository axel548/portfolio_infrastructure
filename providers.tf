# --------------------------------------------------------
# Provider y configuración base
# --------------------------------------------------------
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.13.0"
    }
  }

  # Backend comentado temporalmente para la creación inicial
  # backend "azurerm" {
  #   resource_group_name  = "portfolio-dev"
  #   storage_account_name = "portfolio-storage"
  #   container_name       = "tfstate"
  #   key                  = "terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

data "azurerm_client_config" "current" {}