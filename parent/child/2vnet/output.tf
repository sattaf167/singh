output "vnet_name" {

  value = {

    name = values(azurerm_virtual_network.vnet)[0].name

    id = values(azurerm_virtual_network.vnet)[0].id

    subnet = values(azurerm_virtual_network.vnet)[0].subnet[*].name
  }
}