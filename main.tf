# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "francecentral"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
  }
}

module "vnet" {
  source = "./modules/azurerm-multiplevnet"

  loc   = azurerm_resource_group.rg.location
  rg    = azurerm_resource_group.rg.name
  vnets = var.vnets
}