resource "azurerm_resource_group" "resource_group" {
  name     = "rg-" + var.rg_name
  location = var.location
}