resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.private_dns_zone_rg_name
  tags                = var.private_dns_zone_tags
}

