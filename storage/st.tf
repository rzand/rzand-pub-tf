resource "azurerm_storage_account" "st_acct" {
  name                     = var.st_name
  resource_group_name      = var.st_rg_name
  location                 = var.st_location
  account_tier             = var.st_account_tier
  account_replication_type = var.st_replication_type
  
  access_tier              = var.st_access_tier
  tags = var.st_tags
}
