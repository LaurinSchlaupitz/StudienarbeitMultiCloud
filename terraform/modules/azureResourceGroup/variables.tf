variable "rg_name" {
  type        = string
}
variable "location" {
  type        = string
  default     = "germanywestcentral"
}
variable "tags" {
  type        = map(string)
  default     = {}
}
