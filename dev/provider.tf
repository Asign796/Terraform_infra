# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG_STATE_FILE"
    storage_account_name = "backendstg005"
    container_name       = "con005"
    key                  = "projectstatefilenew"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "73e9207b-6b1c-4647-aa11-ca76d043d01d"
}

