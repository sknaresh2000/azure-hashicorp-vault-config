terraform {
  required_version = ">=1.2.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.47.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "=3.15.0"
    }
  }
  backend "local" {}
}

provider "azurerm" {
  features {}
}

provider "vault" {}