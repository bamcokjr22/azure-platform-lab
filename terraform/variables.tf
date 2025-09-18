variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = "platform-rg"
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "platform-vnet"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "platform-subnet"
}

variable "storage_account_name" {
  description = "Storage account for tfstate"
  type        = string
  default     = "tfstatestorageacctpes"
}

variable "aks_name" {
  description = "AKS cluster name"
  type        = string
  default     = "platform-aks"
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "platformacr123"
}

