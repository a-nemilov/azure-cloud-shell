
provider "azurerm" {
    features {}
    
}

resource "azurerm_resource_group" "main_resource_group" {
  name     = var.main_resource_group
  location = var.location
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.main_resource_group.location
  resource_group_name = azurerm_resource_group.main_resource_group.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.main_resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.subnet_address_prefixes
}