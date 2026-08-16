output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "vnet_id" {
  value       = module.vnet.vnet_ids
  description = "ID of the created virtual network"
}