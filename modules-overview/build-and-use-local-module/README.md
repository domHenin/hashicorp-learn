# HashiCorp Terraform -- Build and Use a Local Module

# Overview

Found new infrastructure to build. This will allow me to get some hands on experience with different AWS services using Terraform. Following this [HashiCorp Learn -- Build and Use a Local Module](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules) and provided access to this [GitHub Repo](https://github.com/hashicorp/learn-terraform-modules-create) will give me a better understanding using different AWS Services along with Terraform Infrastructure and Building Local Modules.

-----

# Getting Started

In the last tutorial, you used modules from the Terraform Registry to create a VPC and an EC2 instance in AWS. While using existing Terraform modules correctly is an important skill, every Terraform practitioner will also benefit from learning how to create modules. In fact, we recommend that every Terraform configuration be created with the assumption that it may be used as a module, because doing so will help you design your configurations to be flexible, reusable, and composable.

As you may already know, Terraform treats every configuration as a module. When you run terraform commands, or use Terraform Cloud or Terraform Enterprise to remotely run Terraform, the target directory containing Terraform configuration is treated as the root module.

In this tutorial, you will create a module to manage AWS S3 buckets used to host static websites.

----

## Guides
- [HashiCorp Learn -- Local Modules](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules)
- [GitHub Repo](https://github.com/hashicorp/learn-terraform-modules-create)
- [Terraform Modules Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules)

----
## Running Terraform

Run the following to ensure ***terraform*** will only perform the expected
actions:

```sh
terraform fmt
terraform validate
terraform plan
terraform init
terraform apply
```

## Upload files to Bucket

AWS CLI -- upload ***./www/.*** to created Bucket

You can upload the contents of the `www` directory using the AWS console, or the [AWS commandline tool](https://aws.amazon.com/cli/), for example:

```sh
$ AWS_PROFILE=<create_profile> aws s3 cp modules/path/to/s3_bucket/direcotry/www/ s3://$(terraform output -raw output_name_from_root)/ --recursive
upload: modules/path/to/s3_bucket/direcotry/www/error.html to s3://clxdev-10-12-2022-website/error.html
upload: modules/path/to/s3_bucket/direcotry/www/index.html to s3://clxdev-10-12-2022-website/index.html
```

## Clean up the website and infrastructure

If you have uploaded files to your bucket, you will need to delete them before the bucket can be destroyed. For example, you could run:
```sh
$ AWS_PROFILE=<created_profile> aws s3 rm s3://$(terraform output -raw bucket_name_from_root_outputs)/ --recursive
delete: s3://unique-name-of-s3-bucket/error.html
delete: s3://unique-name-of-s3-bucket/index.html
```

## Tearing Down the Terraformed Infrastructure

Run the following to verify that ***terraform*** will only impact the expected
nodes and then tear down the cluster.

```sh
terraform plan
terraform destroy
```

----

## Module Structure

Terraform treats any local directory referenced in the source argument of a module block as a module. A typical file structure for a new module is:

```sh
.
├── LICENSE
├── README.md
├── main.tf
├── modules
│   └── aws-s3-static-website-bucket
├── outputs.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── variables.tf
```

### Add module configuration

You will work with three Terraform configuration files inside the `aws-s3-static-website-bucket` directory: `main.tf`, `variables.tf`, and `outputs.tf`

```sh
modules
└── aws-s3-static-website-bucket
    ├── LICENSE
    ├── README.md
    ├── main.tf
    ├── outputs.tf
    ├── variables.tf
    └── www
```

Each of these files serves a purpose:

   - `LICENSE` will contain the license under which your module will be distributed. When you share your module, the LICENSE file will let people using it know the terms under which it has been made available. Terraform itself does not use this file.
   - `README.md` will contain documentation describing how to use your module, in markdown format. Terraform does not use this file, but services like the Terraform Registry and GitHub will display the contents of this file to people who visit your module's Terraform Registry or GitHub page.
   - `main.tf` will contain the main set of configuration for your module. You can also create other configuration files and organize them however makes sense for your project.
   - `variables.tf` will contain the variable definitions for your module. When your module is used by others, the variables will be configured as arguments in the module block. Since all Terraform values must be defined, any variables that are not given a default value will become required arguments. Variables with default values can also be provided as module arguments, overriding the default value.
   - ` outputs.tf` will contain the output definitions for your module. Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of your infrastructure defined by the module to other parts of your configuration.

There are also some other files to be aware of, and ensure that you don't distribute them as part of your module:

   - `terraform.tfstate` and `terraform.tfstate.backup`: These files contain your Terraform state, and are how Terraform keeps track of the relationship between your configuration and the infrastructure provisioned by it.
   - `.terraform`: This directory contains the modules and plugins used to provision your infrastructure. These files are specific to a specific instance of Terraform when provisioning infrastructure, not the configuration of the infrastructure defined in .tf files.
   - `*.tfvars`: Since module input variables are set via arguments to the module block in your configuration, you don't need to distribute any *.tfvars files with your module, unless you are also using it as a standalone Terraform configuration.

If you are tracking changes to your module in a version control system, such as git, you will want to configure your version control system to ignore these files. For an example, see this [.gitignore](https://github.com/github/gitignore/blob/main/Terraform.gitignore) file from GitHub

----
[tfhome](https://www.terraform.io)
[tfdocs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
[hashiCorpLearn](https://learn.hashicorp.com/)