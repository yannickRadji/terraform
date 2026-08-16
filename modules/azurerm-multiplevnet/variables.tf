variable "rg" {
  description = "Name of the RG for resource_group_name"
  type        = string
}

variable "loc" {
  type        = string
  description = "Azure region for location"
}

variable "vnets" {
  type = map(object({
    address_space = list(string)
    tags = object({
      environment       = string
      terraform_managed = optional(bool, true)
    })
  }))
  description = "Map of VNets to create"

  validation {
    condition = alltrue([
      for vnet in values(var.vnets) :
      alltrue([
        for cidr in vnet.address_space :
      can(cidrhost(cidr, 0))])
    ])
    error_message = "Each value in address_space must be a valid IPv4 CIDR block like 10.0.0.0/16."
  }
}