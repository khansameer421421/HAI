output "bucket_id" {
  description = "Name of the S3 bucket."
  value       = module.s3.bucket_id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket."
  value       = module.s3.bucket_arn
}

output "bucket_domain_name" {
  description = "Regional DNS name of the S3 bucket."
  value       = module.s3.bucket_domain_name
}
