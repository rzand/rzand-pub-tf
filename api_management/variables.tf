variable "api_management_name" {
  type        = string
  default     = "api_mgmt_name"
  description = "api management name"
}
variable "api_management_rg_name" {
  type        = string
  default     = "rg_api_management"
  description = "default resource group"
}
variable "api_management_location" {
  type        = string
  default     = "westeurope"
  description = "apim management location"
}
variable "api_management_publisher_name" {
  type        = string
  default     = "CompanyA"
  description = "application publisher name"
}
variable "api_management_publisher_email" {
  type        = string
  default     = "noreply@domain.com"
  description = "application publisher email"
}
variable "api_management_sku" {
  type        = string
  default     = "Developer_1"
  description = "api management sku"
}
variable "api_management_public_network_access_enabled" {
  type        = bool
  default     = true
  description = "api management public access mode"
}
variable "api_management_virtual_network_type" {
  type        = string
  default     = "Internal"
  description = "api management vnet type"
}
variable "api_management_virtual_network_configuration_subnet" {
  type        = string
  default     = ""
  description = "api management vnet/subnet configuration"
}

