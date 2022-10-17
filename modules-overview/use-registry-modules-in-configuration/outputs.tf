output "vpc_public_subnets" {
    value = module.vpc.public_subnets
    description = "IDs for the VPC's public subnets"
}

output "ec2_instance_public_ips" {
    description = "Public IP address of EC2 instances"
    value = module.ec2_instances[*].public_ip  
}