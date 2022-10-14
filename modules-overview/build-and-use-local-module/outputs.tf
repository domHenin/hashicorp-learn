# -----------------------------------------
# Main: outputs
# -----------------------------------------

# output "vpc_public_subnets" {
#   description = "IDs of the VPC's public subnet"
#   value       = module.vpc_public_subnets
# }

# output "ec2_instance_public_ips" {
#   description = "Public IP addresses of EC2 instances"
#   value       = module.ec2_instances.public_ip
# }

output "website_bucket_arn" {
  description = "ARN of the bucket"
  value       = module.aws_s3_bucket_module.arn
}

output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = module.aws_s3_bucket_module.name

}

output "website_bucket_domain" {
  description = "Domain name of the bucket"
  value       = module.aws_s3_bucket_module.domain
}
