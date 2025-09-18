variable "rg_name" {
  description = "Resource group name where AKS will be deployed"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "aks_name" {
  description = "AKS cluster name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the node pool will be deployed"
  type        = string
}
