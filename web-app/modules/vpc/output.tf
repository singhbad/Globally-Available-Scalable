output "vpc_id" {
  value = aws_vpc.vpcs.id
}

output "subnet_id" {
  value = aws_subnet.subnets.id
}

output "security_group_id" {
  value = aws_security_group.instance_sg.id
}