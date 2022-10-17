variable "aws_region" {
    description = "region for infrastructure"
    type = string
    default = "us-east-1"  
}

# variable "aws_tags" {
  
# }

variable "vpc_name" {
    description = "name of vpc"
    type = string
    default = "module-vpc"  
}

variable "vpc_cidr" {
    description = "cidr range for vpc"
    type = string
    default = "10.0.0.0/16"  
}

variable "vpc_azs" {
    description = "availability zone for vpc"
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]  
}

variable "vpc_private_subnets" {
    description = "subnet for private"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
    description = "subnet for public"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]  
}

variable "vpc_enable_nat_gateway" {
    description = "enable NAT gateway for VPC"
    type = bool
    default = true
}

variable "vpc_tags" {
    description = "tag name for vpc"
    type = map(string)
    default = {
        Terraform = "ture"
        Enviroment = "dev"        
    }  
}