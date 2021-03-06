# resource "azurerm_linux_virtual_machine" "vm1" {
#   name                = "machine1"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   size                = "Standard_DS1_v2"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.NetInt1.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }
# #   plan {
# #     name      = "wordpress-with-ubuntu-20-04-lts"
# #     publisher = "cognosys"
# #     product   = "wordpress-with-ubuntu-20-04-lts"
# #   }

# }