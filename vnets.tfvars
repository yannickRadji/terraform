vnets = {
  vnet1 = {
    address_space = ["10.0.0.0/16"]
    tags = {
      environment      = "prod"
      terraformmanaged = true
    }
  }

  vnet2 = {
    address_space = ["10.1.0.0/16"]
    tags = {
      environment = "prod"
    }
  }
}