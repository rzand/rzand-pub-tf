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
variable "pip_tags" {
  type = map(string)
  default = {
    Author      = "Andrea Rizzioli"
    CreatedBy   = "Terraform"
    ManagedWith = "Terraform"
  }
  description = "A map of the tags to use for the resources that are deployed"
}
