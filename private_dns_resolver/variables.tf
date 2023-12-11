variable "private_dns_resolver_name" {
  type        = string
  default     = "strzand"
  description = "private dns resolver name"
}
variable "private_dns_resolver_rg_name" {
  type        = string
  default     = "rg_rzand_stuff"
  description = "default resource group"
}
variable "private_dns_resolver_location" {
  type        = string
  default     = "westeurope"
  description = "private dns resolver location"
}
variable "private_dns_resolver_virtual_network_id" {
  type        = string
  default     = "westeurope"
  description = "private dns resolver network id"
}
variable "private_dns_resolver_tags" {
  type = map(string)
  default = {
    Author      = "Andrea Rizzioli"
    CreatedBy   = "Terraform"
    ManagedWith = "Terraform"
  }
  description = "A map of the tags to use for the resources that are deployed"
}
