output "db_name" {
  value = values(azurerm_mssql_database.dbase)[*].name
}