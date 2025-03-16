terraform {
  required_version = "=1.11.2"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "auctionify-terraform-state-rg"
    storage_account_name = "auctionifyterraformstate"
    container_name       = "tfstate"
    key                 = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "665b9990-181c-4de5-a3cf-99714a3f241e"
}
