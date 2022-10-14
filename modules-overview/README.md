# About Modules

`For Learning Purposes Only` all information here can be found at [Terraform Learn -- Module Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules)

`The purpose for this section is for future review`

---

# Overview

Following this [HashiCorp Learn -- Module Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules) will give me a better understanding on using Terraform the proper way. `This is for learning purposes only`

-----

# Modules Overview

As you manage your infrastructure with Terraform, you will create increasingly complex configurations. There is no intrinsic limit to the complexity of a single Terraform configuration file or directory, so it is possible to continue writing and updating your configuration files in a single directory. However, if you do, you may encounter one or more problems:

   - Understanding and navigating the configuration files will become increasingly difficult.

   - Updating the configuration will become more risky, as an update to one section may cause unintended consequences to other parts of your configuration.

   - There will be an increasing amount of duplication of similar blocks of configuration, for instance when configuring separate dev/staging/production environments, which will cause an increasing burden when updating those parts of your configuration.

   - You may wish to share parts of your configuration between projects and teams, and will quickly find that cutting and pasting blocks of configuration between projects is error prone and hard to maintain.

   - Engineers will need more Terraform expertise to understand and modify your configuration. This makes self-service workflows for other teams more difficult, slowing down their development.

In this tutorial, you will learn how modules can address these problems, the structure of a Terraform module, and best practices when using and creating modules.

Then, over the course of these tutorials, you will [use](https://learn.hashicorp.com/tutorials/terraform/module-use) and [create](https://learn.hashicorp.com/tutorials/terraform/module-create) Terraform modules to simplify your current workflow.

---


# What are modules for?

Here are some of the ways that modules help solve the problems listed above:

   - Organize configuration - Modules make it easier to navigate, understand, and update your configuration by keeping related parts of your configuration together. Even moderately complex infrastructure can require hundreds or thousands of lines of configuration to implement. By using modules, you can organize your configuration into logical components.

   - Encapsulate configuration - Another benefit of using modules is to encapsulate configuration into distinct logical components. Encapsulation can help prevent unintended consequences, such as a change to one part of your configuration accidentally causing changes to other infrastructure, and reduce the chances of simple errors like using the same name for two different resources.

   - Re-use configuration - Writing all of your configuration from scratch can be time consuming and error prone. Using modules can save time and reduce costly errors by re-using configuration written either by yourself, other members of your team, or other Terraform practitioners who have published modules for you to use. You can also share modules that you have written with your team or the general public, giving them the benefit of your hard work.

   - Provide consistency and ensure best practices - Modules also help to provide consistency in your configurations. Not only does consistency make complex configurations easier to understand, it also helps to ensure that best practices are applied across all of your configuration. For instance, cloud providers give many options for configuring object storage services, such as Amazon S3 or Google Cloud Storage buckets. There have been many high-profile security incidents involving incorrectly secured object storage, and given the number of complex configuration options involved, it's easy to accidentally misconfigure these services.

   - Self service - Modules make your configuration easier for other teams to use. The Terraform Cloud registry lets other teams find and re-use your published and approved Terraform modules. You can also build and publish no-code ready modules, which let teams without Terraform expertise provision their own infrastructure that complies with your organization's standards and policies.

   - Using modules can help reduce these errors. For example, you might create a module to describe how all of your organization's public website buckets will be configured, and another module for private buckets used for logging applications. Also, if a configuration for a type of resource needs to be updated, using modules allows you to make that update in a single place and have it be applied to all cases where you use that module.

----
# What is a Terraform module?

A Terraform module is a set of Terraform configuration files in a single directory. Even a simple configuration consisting of a single directory with one or more .tf files is a module. When you run Terraform commands directly from such a directory, it is considered the root module. So in this sense, every Terraform configuration is part of a module. You may have a simple set of Terraform configuration files such as:

```sh
.
├── LICENSE
├── README.md
├── main.tf
├── variables.tf
├── outputs.tf
```

In this case, when you run terraform commands from within the `minimal-module` directory, the contents of that directory are considered the root module.

---

# Calling modules

Terraform commands will only directly use the configuration files in one directory, which is usually the current working directory. However, your configuration can use module blocks to call modules in other directories. When Terraform encounters a module block, it loads and processes that module's configuration files.

A module that is called by another configuration is sometimes referred to as a "child module" of that configuration.

---

# Local and remote modules

Modules can either be loaded from the local filesystem, or a remote source. Terraform supports a variety of remote sources, including the Terraform Registry, most version control systems, HTTP URLs, and Terraform Cloud or Terraform Enterprise private module registries

---
[tfhome](https://www.terraform.io)
[tfdocs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
[hashiCorpLearn](https://learn.hashicorp.com/)
