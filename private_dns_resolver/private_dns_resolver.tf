resource "azurerm_private_dns_resolver" "private_dns_resolver" {
  name                = var.private_dns_resolver_name
  resource_group_name = var.private_dns_resolver_rg_name
  location            = var.private_dns_resolver_location
  virtual_network_id  = var.private_dns_resolver_virtual_network_id
  tags                = var.private_dns_resolver_tags
}
