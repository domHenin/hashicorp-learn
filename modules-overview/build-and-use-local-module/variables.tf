# -----------------------------------------
# Main: Variables
# -----------------------------------------

#-----------------------------------------
# Variables: AWS Region
#-----------------------------------------

variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

#-----------------------------------------
# Variables: VPC
#-----------------------------------------

# variable "vpc_name" {
#   description = "vpc name"
#   type        = string
#   default     = "module-vpc-name"
# }
# variable "vpc_cidr" {
#   description = "cidr range for vpc"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "vpc_azs" {
#   description = "availabilty zones for vpc"
#   type        = list(string)
#   default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }

# variable "vpc_private_subnets" {
#   description = "vpc subnets private"
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "vpc_public_subnets" {
#   description = "vpc subnets public"
#   type        = list(string)
#   default     = ["10.0.101.0/24", "10.0.102.0/24"]
# }

# variable "vpc_enable_nat_gateway" {
#   description = "Enable NAT gateway for VPC"
#   type        = bool
#   default     = true

# }

# variable "vpc_tags" {
#   description = "vpc tag name"
#   type        = map(string)
#   default = {
#     terraform  = "true"
#     enviroment = "dev"
#   }
# }

#-----------------------------------------
# Variables: EC2 Instance
#-----------------------------------------

# variable "instance_name" {
#     description = "ec2 instance name"
#     type = string
#     default = "my-ec2-cluster"  
# }

# variable "instance_ami" {
#     description = "ami for instance"
#     type = string
#     default = "ami-0c5204531f799e0c6"  
# }

# variable "instance_type" {
#     description = "ec2 instance type"
#     type = string
#     default = "t2.micro"  
# }

# variable "instance_tags" {
#     description = "tag name for ec2"
#     type = map(string)
#     default = {
#         terraform = "true"
#         enviroment = "dev"
#     } 
# }

#-----------------------------------------
# Variables: S3 Bucket
#-----------------------------------------

variable "s3_bucket_name" {
  default = "clxdev-10-12-2022-website"
}

variable "s3_bucket_tag" {
  default = "hosting-website"
}
