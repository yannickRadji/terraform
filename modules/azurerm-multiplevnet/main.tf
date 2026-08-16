resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets

  name                = each.key
  address_space       = each.value.address_space
  location            = var.loc
  resource_group_name = var.rg
  tags                = each.value.tags
}