output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "security_group_id" {
  value = aws_security_group.web-sg.id
}

output "load_balancer_dns_name" {
  value = aws_lb.lb.dns_name
}
