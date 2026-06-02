output "rg_name" {
  value = values(azurerm_resource_group.shyam)[0].name
}