## Introduction

What I offer here is a basic example of deploying an AWS EC2 instance using Terraform.  You can use this simple structure to deploy an simple EC2 instance, however you will need to do some further configuration in the console in order to access the instance, though you will be able to see that you have successfully created it quite easily.

An EC2 instance is one of the first compute resources in AWS that you will likely work with, making it a great place for starting to work with Terraform as well.

## This project

### EC2 Module

Inside the main.tf of the EC2 module we have just the one resource, this is of the type *aws_instance*. There are only 2 attributes that we need to define for this resource, firstly is the ami (Amazon Machine Image) that we will be using to create our EC2 instance, and secondly we have the *instance_type* which defines the size of the machine that we want to create.

To define the *ami* attribute, I am making use of a data block, this block ensures that we always use the latest *Amazon Linux 2* image, without needing to worry about finding the reference for this particular image for our region.