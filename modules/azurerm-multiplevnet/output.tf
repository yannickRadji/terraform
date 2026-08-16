output "vnet_ids" {
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.id }
  description = "IDs of all created VNets keyed by name"
}