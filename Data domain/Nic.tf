resource "azurerm_network_interface" "main" {
  name                = var.Nic
  location            = azurerm_resource_group.DD_RG.location
  resource_group_name = azurerm_resource_group.DD_RG.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}