resource "azurerm_marketplace_agreement" "dellemc" {
  publisher = "dellemc"
  offer     = "dell-emc-datadomain-virtual-edition-v4"
  plan      = "ddve-60-ver-7305"


}