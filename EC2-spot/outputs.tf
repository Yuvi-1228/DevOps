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

output "spot_instance_id" {
  description = "The ID of the Spot instance"
  value       = aws_spot_instance_request.web.spot_instance_id
}

output "spot_instance_public_ip" {
  description = "The public IP address of the Spot instance"
  value       = aws_spot_instance_request.web.public_ip
}
