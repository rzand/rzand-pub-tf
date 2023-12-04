resource "azurerm_api_management" "apim" {
  name                = var.api_management_name
  location            = var.api_management_location
  resource_group_name = var.api_management_rg_name
  publisher_name      = var.api_management_publisher_name
  publisher_email     = var.api_management_publisher_email
  sku_name            = var.api_management_sku

  public_network_access_enabled = var.api_management_public_network_access_enabled
  virtual_network_type          = var.api_management_virtual_network_type
  virtual_network_configuration {
    subnet_id = var.api_management_virtual_network_configuration_subnet
  }
}
