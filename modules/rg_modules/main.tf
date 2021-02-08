terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"  
   }
  }
}

resource "azurerm_resource_group" "resourcegroup" {
name = var.main_resource_group
location = var.location_name
}