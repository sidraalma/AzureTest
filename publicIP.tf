
resource "azurerm_public_ip" "publicIP1" {
  name                = "public1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  #domain_name_label   = azurerm_resource_group.rg.name
}

resource "azurerm_public_ip" "publicIP2" {
  name                = "public2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  # domain_name_label   = azurerm_resource_group.rg.name
}

resource "azurerm_public_ip" "publicIP3" {
  name                = "public3"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynmaic"
  # domain_name_label   = azurerm_resource_group.rg.name
}

