resource "azurerm_linux_virtual_machine" "ajmv" {
    for_each = var.ajvm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size

  admin_username      = "adminuser"
  admin_password =  "password@123"
 disable_password_authentication = false
  network_interface_ids = [
data.azurerm_network_interface.data_nic.id
  ]



  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
