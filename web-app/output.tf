output "subnet_id" {
  value = module.vpc.subnet_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}