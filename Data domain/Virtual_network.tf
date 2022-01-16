resource "azurerm_virtual_network" "main" {
  name                = var.DD_Net
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.DD_RG.location
  resource_group_name = azurerm_resource_group.DD_RG.name
}