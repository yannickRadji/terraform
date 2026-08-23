terraform {
  required_version = ">= 1.8.0"

  required_providers {
    fivetran = {
      source  = "fivetran/fivetran"
      version = "~> 1.9"
    }

    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 2.19"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
}