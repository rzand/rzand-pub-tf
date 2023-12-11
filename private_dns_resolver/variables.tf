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
  default     = "/subscriptions/xx/resourceGroups/rg-xx/providers/Microsoft.Network/virtualNetworks/vnet-xx"
  description = "private dns resolver network id"
}
variable "private_dns_resolver_inbound_endpoint_name" {
  type        = string
  default     = "arr_priv_dns_in_ep_name"
  description = "private dns resolver inbound endpoint name"
}
variable "private_dns_resolver_private_ip_allocation_method" {
  type        = string
  default     = "Dynamic"
  description = "private dns resolver private ip allocation method"
}
variable "private_dns_resolver_private_ib_ep_subnet_id" {
  type        = string
  default     = "Dynamic"
  description = "private dns resolver inbound endpoint subnet id"
}
variable "private_dns_resolver_outbound_endpoint_name" {
  type        = string
  default     = "arr_priv_dns_in_ep_name"
  description = "private dns resolver inbound endpoint name"
}
variable "private_dns_resolver_private_ob_ep_subnet_id" {
  type        = string
  default     = "Dynamic"
  description = "private dns resolver inbound endpoint subnet id"
} 
# variable "private_dns_resolver_forwarding_rulesets" { 
# }
variable "private_dns_resolver_forwarding_rulesets" {
  type = list(object({
    name    = string
    forwarding_rules = list(object({
          name        = string
          domain_name = string
          target_dns_servers = list(object({
            ip_address = string
            port = number
          }))
     }))
  }))
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
