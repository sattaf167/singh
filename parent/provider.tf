terraform {
  required_version = ">=1.12.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }

}
provider "azurerm" {
  features {

  }
  subscription_id = "80217434-ec3b-4237-9fd0-656182852097"
}