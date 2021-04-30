## Introduction

An EC2 instance is one of the first compute resources in AWS that you will likely work with, making it a great place for starting to work with Terraform as well.  However, the focus for this session is the structure of the Terraform Project.

What I offer here is a basic example of deploying an AWS EC2 instance using Terraform.  You can use this simple structure to deploy a simple EC2 instance, however, you will need to do some further configuration in the console to access the instance, though you will be able to see that you have successfully created it quite easily.

## Consistent Style

To create the structure of this project I have chosen to split the resources that I am creating into modules, these modules means that my deployment is easier to write, debug and maintain.  By using modules, we can also choose to reuse our modules, which we will start to see in later sessions.

You will notice a consistent style within the project, the terraform code that is written for each module is grouped into multiple files, and these .tf files also appear in the root of the project.  Typically the files that exist are:

- main.tf
- variables.tf
- outputs.tf
- data.tf

### main.tf

In this file the terraform resources are described, unless you are looking in the root of the project structure in which case the main.tf file describes the modules used in the project.

Within a module I will define the resources that are logically related in the main.tf, this approach is recommended by HashiCorp, however is not always the chosen approach in reality.

### variables.tf

In this file the variables that are used by the project and the various modules can be defined, you can define the type of the variable, give it a description, and also declare a default value, making working with the project a little easier.

In later sessions we will make use of a *terraform.tfvars* file to define the value that we want to give to our variables.

### outputs.tf

In this file, the output from the resources created is defined.  This can be useful if you want to print some output to the console when the deployment is completed, however, you will most often use it to pass the output from one module to be used with another.

### data.tf

This file is where I will define *data* resource blocks, these can be used for different things including, getting information about existing AWS resources to utilise them with other resources.