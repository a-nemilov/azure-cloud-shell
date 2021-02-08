terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"  
   }
  }
}
 
provider "azurerm" {
  features {}
 msi_endpoint = "http://169.254.169.254/metadata/identity/oauth2/token"
}



module "vpc" {
  # source = "./modules/rg_modules"
  source = "github.com/a-nemilov/azure-cloud-shell/modules/vpc"
  main_resource_group = "westeurope-1"
  location_name = "eastus"
}




 
