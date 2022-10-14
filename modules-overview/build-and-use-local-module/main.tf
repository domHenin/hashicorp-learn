# -----------------------------------------
# Main: calling all modules
# -----------------------------------------

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

}

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.21.0"

#   name = var.vpc_name
#   cidr = var.vpc_cidr

#   azs             = var.vpc_azs
#   private_subnets = var.vpc_private_subnets
#   public_subnets  = var.vpc_public_subnets

#   enable_nat_gateway = var.vpc_enable_nat_gateway

#   tags = {
#     Name = var.vpc_tags
#   }
# }

# module "ec2_instances" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "2.12.0"

#   name           = var.instance_name
#   instance_count = 2

#   ami                    = var.instance_ami
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [module.vpc.default_security_group_id]
#   subnet_id              = module.vpc.public_subnets[0]

#   tags = {
#     Name = var.instance_tags
#   }
# }

module "aws_s3_bucket_module" {
  source      = "./modules/aws/aws-s3-static-website-bucket"
  bucket_name = var.s3_bucket_name
  bucket_tag  = var.s3_bucket_tag
}
