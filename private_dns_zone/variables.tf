variable "private_dns_zone_name" {
  type        = string
  default     = "privatelink.blob.core.windows.net"
  description = "private dns zone name"
}
variable "private_dns_zone_rg_name" {
  type        = string
  default     = "rg_rzand_stuff"
  description = "default resource group"
}
variable "private_dns_zone_vnet_id" {
  type        = string
  default     = "/subscriptions/6a4f2ef1-e3f0-43e2-a177-e1e9b6555537/resourceGroups/rg-connectivity-core-westeurope-001/providers/Microsoft.Network/virtualNetworks/vnet-conn-we-001"
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
