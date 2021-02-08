terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"  
   }
  }
}

resource "azurerm_resource_group" "resourcegroup" {
name = var.resource_group_name
location = var.location
}