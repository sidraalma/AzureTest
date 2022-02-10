
resource "azurerm_virtual_network" "vnet" {
  name                = "vnetwork"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

  #   subnet {
  #     name           = "subnet1"
  #     address_prefix = "10.0.1.0/24"
  #   }

  #   subnet {
  #     name           = "subnet2"
  #     address_prefix = "10.0.2.0/24"
  #    # security_group = azurerm_network_security_group.example.id
  #   }

  # subnet {
  #     name           = "subnet3"
  #     address_prefix = "10.0.3.0/24"
  #    # security_group = azurerm_network_security_group.example.id
  #   }

}

resource "azurerm_subnet" "subnet1" {
  name                 = "psubnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = "psubnet2"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "subnet3" {
  name                 = "psubnet3"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.3.0/24"]
}