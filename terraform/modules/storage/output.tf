output "bucket_id" {
  description = "The name (ID) of the created bucket"
  value       = aws_s3_bucket.example.id
}

output "bucket_arn" {
  description = "The ARN of the created bucket"
  value       = aws_s3_bucket.example.arn
}
