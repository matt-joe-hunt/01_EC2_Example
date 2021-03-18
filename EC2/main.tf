data "aws_ssm_parameter" "linuxAmi" {
  name     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "simple_ec2" {
  ami                         = data.aws_ssm_parameter.linuxAmi.value
  instance_type               = var.instance-type

  tags = {
    Name = var.instance-name
  }
}