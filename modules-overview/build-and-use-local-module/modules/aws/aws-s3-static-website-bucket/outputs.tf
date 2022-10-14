# -----------------------------------------
# S3 Bucket: Outputs
# -----------------------------------------

# output variable definitions

output "arn" {
  description = "ARN of s3 bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "name (id) of s3 bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "domain name of s3 bucket"
  value       = aws_s3_bucket_website_configuration.s3_bucket.website_domain
}

