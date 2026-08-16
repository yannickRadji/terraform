terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prod"
    storage_account_name = "tfstatergyr"
    container_name       = "tfstate"
    key                  = "my-workload/prod/terraform.tfstate"

    use_azuread_auth = true
    snapshot         = true
  }
}