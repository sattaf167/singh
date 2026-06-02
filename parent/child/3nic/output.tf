output "nic_name" {
  value = values(azurerm_network_interface.nic)[*].name
}
output "sipr" {
  value = values(azurerm_network_interface.nic)[*].id
}