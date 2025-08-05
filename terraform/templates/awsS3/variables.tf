# AWS region
variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
}

# S3 bucket name (must be globally unique)
variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

# Tags to apply to the bucket
variable "tags" {
  description = "Map of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}
