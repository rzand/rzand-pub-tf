resource "azurerm_private_dns_resolver" "private_dns_resolver" {
  name                = var.private_dns_resolver_name
  resource_group_name = var.private_dns_resolver_rg_name
  location            = var.private_dns_resolver_location
  virtual_network_id  = var.private_dns_resolver_virtual_network_id
  tags                = var.private_dns_resolver_tags
}
resource "azurerm_private_dns_resolver_inbound_endpoint" "private_dns_resolver_inbound_endpoint" {
  name                    = var.private_dns_resolver_inbound_endpoint_name
  private_dns_resolver_id = azurerm_private_dns_resolver.private_dns_resolver.id
  location                = var.private_dns_resolver_location
  tags                    = {}

  ip_configurations {
    private_ip_allocation_method = var.private_dns_resolver_private_ip_allocation_method
    subnet_id                    = var.private_dns_resolver_private_in_ep_subnet_id
  }
}
