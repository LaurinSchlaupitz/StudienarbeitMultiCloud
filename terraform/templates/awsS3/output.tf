output "bucket_id" {
  description = "The name (ID) of the created S3 bucket"
  value       = module.s3_bucket.bucket_id
}

output "bucket_arn" {
  description = "The ARN of the created S3 bucket"
  value       = module.s3_bucket.bucket_arn
}
