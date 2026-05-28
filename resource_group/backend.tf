terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend"
    storage_account_name = "devopsinsidersstatesbackend"
    container_name       = "backendCont"             
    key                  = "backendCont.tfstate"     
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-backendmango"
  location = "West US"
}

resource "azurerm_resource_group" "rg3" {
  name     = "rg-backendorange"
  location = "West US"
}

resource "azurerm_resource_group" "rg4" {
  name     = "rg-backendavocardo"
  location = "West US"
}

resource "azurerm_resource_group" "rg5" {
  name     = "rg-backendbanana"
  location = "West US"
}