# HashiCorp Terraform -- Use Registry Modules in Configuration

# Overview

Found new infrastructure to build. This will allow me to get some hands on experience with different AWS services using Terraform. Following this [HashiCorp Learn -- Build and Use a Local Module](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules) and provided access to this [GitHub Repo](https://github.com/hashicorp/learn-terraform-modules-create) will give me a better understanding using different AWS Services along with Terraform Infrastructure and Building Local Modules.

-----


# Getting Started

In the previous tutorial, you learned when and why to use Terraform modules. In this tutorial, you will use modules from the public Terraform Registry to provision an example environment on AWS by referencing the modules in Terraform configuration. The concepts you use in this tutorial will apply to any modules from any source.

---

# Guides
- [HashiCorp Learn -- Local Modules](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules)
- [GitHub Repo](https://github.com/hashicorp/learn-terraform-modules-use)
- [Terraform Modules Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules)

---

# Use the Terraform Registry

Open the [Terraform Registry page for the VPC module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/3.14.0?_gl=1*emjms2*_ga*ODM0MDQwMjA4LjE2NjQ0MjA3NzY.*_ga_P7S46ZYEKW*MTY2NTc3NTU1Ny4xNS4xLjE2NjU3NzkxMjIuMC4wLjA.).

This page displays information about the module and a link to the source repository. The page also has a dropdown interface to select the module version, module usage metrics, and example configuration.

The example configuration sets two arguments: source and version.

    1. The source argument is required when you use a Terraform module. In the example configuration, Terraform will search for a module in the Terraform Registry that matches the given string. You could also use a URL or local module. Refer to the Terraform documentation for a full list of possible module sources.

    2. The version argument is not required, but we highly recommend you include it when using a Terraform module. For supported sources, this argument specifies the module version Terraform will load. Without the version argument, Terraform will load the latest version of the module. In this tutorial, you will specify an exact version number for the modules you use. Refer to the module documentation for more methods to specify module versions.

Terraform treats other arguments in the module blocks as input variables for the module. 

---
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
## Tearing Down the Terraform Infrastructure

Run the following to verify that ***terraform*** will only impact the expected
nodes and then tear down the cluster.

```sh
terraform plan
terraform destroy
```
---

# Understand how modules work

When using a new module for the first time, you must run either terraform init or terraform get to install the module. When you run these commands, Terraform will install any new modules in the .terraform/modules directory within your configuration's working directory. For local modules, Terraform will create a symlink to the module's directory. Because of this, any changes to local modules will be effective immediately, without having to reinitialize or re-run terraform get.

After following this tutorial, your .terraform/modules directory will look like the following.
```sh
.terraform/modules/
├── ec2_instances
├── modules.json
└── vpc
```
---

[tfhome](https://www.terraform.io)
[tfdocs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
[hashiCorpLearn](https://learn.hashicorp.com/)
[hashiCorpdeveloper](https://developer.hashicorp.com/)