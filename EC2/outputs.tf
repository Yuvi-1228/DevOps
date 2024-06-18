#This file defines the outputs of the infrastructure.
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet1_id" {
  description = "The ID of the first subnet"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "The ID of the second subnet"
  value       = aws_subnet.subnet2.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.rtb.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.allow_ssh.id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}
