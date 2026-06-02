resource "azurerm_network_security_group" "nsg" {
  for_each = var.sipra
  name = each.value.nsg_name
  resource_group_name = each.value.rg_name
  location = each.value.location

  dynamic"security_rule" {
    for_each = each.value.security_rule

    content {
      name = security_rule.value.srule_name
      priority = security_rule.value.priority
      direction = security_rule.value.direction
      access = security_rule.value.access
      protocol = security_rule.value.protocol
      source_port_range = security_rule.value.source_port_range
      destination_port_range = security_rule.value.destination_port_range
      source_address_prefix = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }

  }
}
resource "azurerm_network_interface_security_group_association" "nsg_attach" {
  count = length(var.sipr)

  network_interface_id      = var.sipr[count.index]
  network_security_group_id = values(azurerm_network_security_group.nsg)[0].id
}