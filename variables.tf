variable "region-master" {
  type    = string
  default = "eu-west-1"
}

variable "instance-type" {
  type        = string
  description = "The instance type that we will use"
  default     = "t2.micro"
}

variable "instance-name" {
  type        = string
  description = "the name that we will give to our instance by setting its Tags"
  default     = "my-first-instance"
}