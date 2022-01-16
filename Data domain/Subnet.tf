resource "azurerm_subnet" "internal" {
  name                 = var.DD_sub
  resource_group_name  = azurerm_resource_group.DD_RG.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}