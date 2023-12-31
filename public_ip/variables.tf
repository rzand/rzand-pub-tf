variable "pip_name" {
  type        = string
  default     = "pip-rzand"
  description = "public IP name"
}
variable "pip_rg_name" {
  type        = string
  default     = "rg_rzand_stuff"
  description = "default resource group"
}
variable "pip_location" {
  type        = string
  default     = "westeurope"
  description = "public IP location"
}
variable "pip_allocation_method" {
  type        = string
  default     = "Static"
  description = "public IP allocation method"
}
variable "pip_sku" {
  type        = string
  default     = "Basic"
  description = "public IP stock keeping unit"
}
variable "pip_sku_tier" {
  type        = string
  default     = "Regional"
  description = "public IP tier stock keeping unit"
}
variable "pip_ip_version" {
  type        = string
  default     = "IPv4"
  description = "public IP ip version"
}
variable "pip_zones" {
  type        = list(string)
  default     = []
  description = "public IP availability zones (Standard SKU only)"
}
variable "pip_tags" {
  type = map(string)
  default = {
    Author      = "Andrea Rizzioli"
    CreatedBy   = "Terraform"
    ManagedWith = "Terraform"
  }
  description = "A map of the tags to use for the resources that are deployed"
}
