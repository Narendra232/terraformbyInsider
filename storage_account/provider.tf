terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "kumar1" {
  name     = "rg-kumar1"
  location = "West Europe"
}

resource "azurerm_storage_account" "kumar2" {
   depends_on = [ azurerm_resource_group.kumar1 ]
  name                     = "storagekumar3"
  resource_group_name      = "rg-kumar1"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}