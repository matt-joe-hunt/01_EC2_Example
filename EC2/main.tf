resource "aws_instance" "simple_ec2" {
  ami                         = data.aws_ssm_parameter.linuxAmi.value
  instance_type               = var.instance-type

  tags = {
    Name = var.instance-name
  }
}