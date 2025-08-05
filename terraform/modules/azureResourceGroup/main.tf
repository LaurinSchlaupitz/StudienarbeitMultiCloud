resource "azurerm_resource_group" "az_prototype_rg" {
  name      = var.rg_name
  location  = var.location
  tags      = var.tags
}