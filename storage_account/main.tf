data "azurerm_resource_group" "storage_rg" {
  name=var.resource_group
}

resource "random_string" "unique" {
  length = 8
  special = false
  upper = false
}

resource "azurerm_storage_account" "storage_account" {
  name=var.storage_account_name
  resource_group_name = data.azurerm_resource_group.storage_rg.name
  location = var.location
  account_tier              = var.account_tier             
  account_replication_type = var.account_replication_type 
  

}