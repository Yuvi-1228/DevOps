#This file defines the EC2 Spot instance and associated resources.
resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_spot_instance_request" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  spot_price    = var.spot_price
  subnet_id     = aws_subnet.subnet1.id
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [
    aws_security_group.allow_ssh.name
  ]
  
  tags = {
    Name = "web-spot-instance"
  }

  wait_for_fulfillment = true
}

output "spot_instance_id" {
  description = "The ID of the Spot instance"
  value       = aws_spot_instance_request.web.spot_instance_id
}

output "spot_instance_public_ip" {
  description = "The public IP address of the Spot instance"
  value       = aws_spot_instance_request.web.public_ip
}
