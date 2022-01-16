resource "azurerm_resource_group" "DD_RG" {
  name     = var.RG_Name
  location = var.RG_Loc
}