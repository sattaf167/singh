resource "azurerm_network_interface" "nic" {
  for_each            = var.bhim
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
  location            = each.value.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.snet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
  }
}
data "azurerm_subnet" "snet" {
  for_each             = var.bhim
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}
data "azurerm_public_ip" "pip" {
  for_each = var.bhim
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}