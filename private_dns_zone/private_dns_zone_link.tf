resource "azurerm_private_dns_zone_virtual_network_link" "privatelink_aks_dns_zone_link" {
  name                  = "${var.private_dns_zone_name}_link_westeurope"
  resource_group_name   = var.private_dns_zone_rg_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.name
  virtual_network_id    = var.private_dns_zone_vnet_id
  registration_enabled  = false
}