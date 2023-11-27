variable "st_name" {
  type        = string
  default     = "strzand"
  description = "storage account name"
}
variable "st_rg_name" {
  type        = string
  default     = "rg_rzand_stuff"
  description = "default resource group"
}
variable "st_location" {
  type        = string
  default     = "westeurope"
  description = "storage account location"
}
variable "st_account_tier" {
  type        = string
  default     = "Standard"
  description = "storage account tier"
}
variable "st_replication_type" {
  type        = string
  default     = "ZRS"
  description = "storage account replication type"
}
variable "st_tags" {
  type = map(string)
  default = {
    Author      = "Andrea Rizzioli"
    CreatedBy   = "Terraform"
    ManagedWith = "Terraform"
  }
  description = "A map of the tags to use for the resources that are deployed"
}
