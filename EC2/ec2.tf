#This file defines the EC2 instance and associated resources.
resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet1.id
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [
    aws_security_group.allow_ssh.name
  ]

  tags = {
    Name = "web-instance"
  }
}
