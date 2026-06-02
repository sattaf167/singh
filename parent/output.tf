output "resource_group_name" {
  value = module.radha.rg_name
}
output "virtual_network_name" {

  value = module.jyada.vnet_name
}
output "network_interface_name" {
  value = module.sadha.nic_name
}
output "public_ip_name" {
  value = module.madha.pip_name
}
output "azurerm_network_security_group" {
  value = module.sidha.nsg_name
}
output "azurerm_linux_virtual_machine" {
  value = module.jiya.vm_name
}
output "network_interface_id" {
  value = module.sadha.sipr
}
output "azurerm_mssql_database" {
  value = module.jiva.db_name
}