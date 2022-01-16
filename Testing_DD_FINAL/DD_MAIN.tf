data "azurerm_resource_group" "example" {
  name = "sanu"
}
data "azurerm_virtual_network" "example" {
  name                = "sanu"
  resource_group_name = "sanu"
}

data "azurerm_subnet" "example" {
  name                 = "sanu"
  virtual_network_name = "sanu"
  resource_group_name  = "sanu"
}

variable "prefix" {
  default = "tfvmex"
}

/*resource "azurerm_resource_group" "main" {
  name     = data.azurerm_resource_group.example.name
  location = data.azurerm_resource_group.example.location
}

resource "azurerm_virtual_network" "main" {
  name                = data.azurerm_virtual_network.example.name
  address_space       = data.azurerm_virtual_network.example.address_space
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
}

resource "azurerm_subnet" "internal" {
  name                 = data.azurerm_subnet.example.name
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = data.azurerm_virtual_network.example.name
  address_prefixes     = data.azurerm_virtual_network.example.address_space
}*/

resource "azurerm_network_interface" "main" {
  name                = "rtyey"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name

  ip_configuration {
    name                          = "tetycfgh"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = "ytrilouyfg"
  location              = data.azurerm_resource_group.example.location
  resource_group_name   = data.azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"


  plan {
    name      = "ddve-60-ver-7305"
    publisher = "dellemc"
    product   = "dell-emc-datadomain-virtual-edition-v4"





  }

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "dellemc"
    offer     = "dell-emc-datadomain-virtual-edition-v4"
    sku       = "ddve-60-ver-7305"
    version   = "latest"
  }
  storage_os_disk {
    name              = "ewrwqewe"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}



resource "azurerm_marketplace_agreement" "dellemc" {
  publisher = "dellemc"
  offer     = "dell-emc-datadomain-virtual-edition-v4"
  plan      = "ddve-60-ver-7305"


}

