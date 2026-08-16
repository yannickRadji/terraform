variable "resource_group_name" {
  default = "myTFResourceGroup"
}

variable "vnets" {
  type = map(object({
    address_space = list(string)
    tags = object({
      environment       = string
      terraform_managed = optional(bool)
    })
  }))
}