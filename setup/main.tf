terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.80.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "5efbf66e-5bb1-43e6-aee3-388fedad1aae"
  client_secret   = var.client_secret
  tenant_id       = "d663c28d-16cd-4ca7-af6f-926ea46094a4"
  subscription_id = "c366c16f-bc2b-4f92-bd27-8c6fc78e48d1"
}
