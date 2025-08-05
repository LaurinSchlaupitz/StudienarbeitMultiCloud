# Azure identity
variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant (directory) ID"
  type        = string
}

# Resource group
variable "rg_name" {
  description = "Name for the Azure Resource Group"
  type        = string
  default     = "test_rg"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "West Europe"
}

# AKS cluster
variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "example-aks1"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "exampleaks1"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "identity_type" {
  description = "Type of managed identity to assign"
  type        = string
  default     = "SystemAssigned"
}

# Common tags
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Project     = "multi-cloud-prototype"
  }
}
