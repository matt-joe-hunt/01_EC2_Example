variable "region-master" {
  type    = string
  default = "eu-west-2"
}

variable "instance-type" {
  type        = string
  description = "The instance type that we will use"
  default     = "t2.micro"
}

variable "instance-name" {
  type        = string
  description = "the name that we will give to our instance by setting its Tags"
  default     = "01_my_first_instance"
}