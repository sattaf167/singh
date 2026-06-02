output "pip_name" {
  value = values(azurerm_public_ip.pip)[*].name
}