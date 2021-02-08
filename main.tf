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

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraformstate"
    storage_account_name = "myterrastatestoragestatetest"
    container_name       = "terraformdemo"
    key                  = "dev.terraform.tfstate"
  }
}



module "vpc" {
  # source = "./modules/vpc"
  source = "github.com/a-nemilov/azure-cloud-shell/modules/vpc"
  main_resource_group = "westeurope-1"
  location_name = "eastus"
  virtual_network_name = "my-vn-1"
  subnet_name = "my-sn-1"
}




 
