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