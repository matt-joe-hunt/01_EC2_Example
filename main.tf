provider "aws" {
  region = var.region-master
}

module "EC2" {
  source        = "./EC2"
  instance-name = var.instance-name
  instance-type = var.instance-type
}