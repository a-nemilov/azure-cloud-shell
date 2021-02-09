# terraform {
#   backend "azurerm" {
#     # resource_group_name  = "rg-terraformstate"
#     # storage_account_name = "myterrastatestoragetest"
#     # container_name       = "terraformdemo"
#     # key                  = "dev.terraform.tfstate"
#     # access_key = "F22fjQGC2AZtIwPdkQque2Vf9Sm0RRztOmeqnvKs5FKy76JVAW9w2JCt5g1nL4DM9QhiJX9YsX4gzYKvJCcnzw=="
#     subscription_id  = "555046cf-608f-4ab2-a674-5678346b4630"
#       resource_group_name   = "rg-terraformstate"
#     storage_account_name  = "myterrastatestoragetest"
#     container_name        = "terraformdemo"
#     key                   = "terraform.tfstate"
#   }
# }

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
#  msi_endpoint = "http://169.254.169.254/metadata/identity/oauth2/token"
}





module "vpc" {
  # source = "./modules/vpc"
  source = "github.com/a-nemilov/azure-cloud-shell/modules/vpc"
  main_resource_group = "westeurope-1"
  location_name = "eastus"
  virtual_network_name = "my-vn-1"
  subnet_name = "my-sn-1"
}




 
