resource "azurerm_mssql_server" "msql" {
    for_each = var.sequal
  name                         = each.value.mssql_name 
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = "saurabh"
  administrator_login_password = "yuvan@12345"
}

resource "azurerm_mssql_database" "dbase" {
    for_each = var.sequal
  name         = each.value.db_name
  server_id    = azurerm_mssql_server.msql[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  tags = {
    foo = "bar"
  }
  lifecycle {
    prevent_destroy = false
  }
}