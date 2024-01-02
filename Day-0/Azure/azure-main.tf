provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "example" {
  location = "East US"
  name     = "tf-rg"
}

resource "azurerm_virtual_network" "example"{
  name = "myvnet"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example"{
  name = "mySubnet"
  resource_group_name = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes = ["10.0.0.0/16"]
}