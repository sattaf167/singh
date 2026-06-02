resource "azurerm_resource_group" "shyam" {
  for_each = var.mira
  name     = each.value.rg_name
  location = each.value.location
}