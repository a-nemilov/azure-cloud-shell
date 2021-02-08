
# provider "azurerm" {
#     features {}
    
# }

# resource "azurerm_resource_group" "main_resource_group" {
#   name     = var.main_resource_group
#   location = var.location
# }

# resource "azurerm_virtual_network" "virtual_network" {
#   name                = var.virtual_network_name
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.main_resource_group.location
#   resource_group_name = azurerm_resource_group.main_resource_group.name
# }

# resource "azurerm_subnet" "subnet" {
#   name                 = var.subnet_name
#   resource_group_name  = azurerm_resource_group.main_resource_group.name
#   virtual_network_name = azurerm_virtual_network.virtual_network.name
#   address_prefixes     = ["10.0.1.0/24"]
# }

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West US"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}