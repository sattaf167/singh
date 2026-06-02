output "nsg_name" {
  value = values(azurerm_network_security_group.nsg)[*].name
}
# resource "azurerm_network_interface_security_group_association" "nsg_attach" {
#   for_each = var.sipr

#   network_interface_id      = each.value
# #   network_security_group_id = azurerm_network_security_group.nsg[each.key].id
# }