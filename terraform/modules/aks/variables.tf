variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
  default     = "germanywestcentral"
}

variable "dns_prefix" {
  type        = string
}

variable "node_count" {
  type        = number
  default     = 1
}

variable "identity_type" {
  type        = string
  default     = "SystemAssigned"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
