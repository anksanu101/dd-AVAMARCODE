resource "azurerm_virtual_machine" "main" {
  name                  = "DD_Vm"
  location              = azurerm_resource_group.DD_RG.location
  resource_group_name   = azurerm_resource_group.DD_RG.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"
  plan {
    name      = "ddve-60-ver-7305"
    publisher = "dellemc"
    product   = "dell-emc-datadomain-virtual-edition-v4"
  }





  storage_image_reference {
    publisher = "dellemc"
    offer     = "dell-emc-datadomain-virtual-edition-v4"
    sku       = "ddve-60-ver-7305"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "sysadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}

