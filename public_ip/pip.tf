resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.pip_rg_name
  location            = var.pip_location
  allocation_method   = var.pip_allocation_method

  tags = var.pip_tags
}