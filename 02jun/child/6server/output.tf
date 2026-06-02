output "vm_name" {
  value = values(azurerm_linux_virtual_machine.vm)[*].name
}