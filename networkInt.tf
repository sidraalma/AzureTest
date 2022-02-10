resource "azurerm_network_interface" "NetInt1" {
  name                = "nic1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "subnet1"
    subnet_id                     = azurerm_subnet.vnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
