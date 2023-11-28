variable "private_dns_zone_name" {
  type        = string
  default     = "privatelink.arr.net"
  description = "private dns zone name"
}
variable "private_dns_zone_rg_name" {
  type        = string
  default     = "rg_rzand_stuff"
  description = "default resource group"
}
variable "private_dns_zone_vnet_id" {
  type        = string
  default     = "/subscriptions/xx/resourceGroups/rg-xx/providers/Microsoft.Network/virtualNetworks/vnet-xx"
  description = "default vnet id"
}
variable "private_dns_zone_tags" {
  type = map(string)
  default = {
    Author      = "Andrea Rizzioli"
    CreatedBy   = "Terraform"
    ManagedWith = "Terraform"
  }
  description = "A map of the tags to use for the resources that are deployed"
}
