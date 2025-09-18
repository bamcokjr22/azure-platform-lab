terraform {
  required_version = ">= 1.7.0"
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorageacctpe"
    container_name       = "tfstate"
    key                  = "infra.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a96ca2fd-c730-47d4-b19d-f160e3c915b8"
  tenant_id       = "039e0a85-b6a5-4f62-91b3-d11d67e382b1"
}
