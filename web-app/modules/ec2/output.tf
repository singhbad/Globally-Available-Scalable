output "instance_id" {
  value = aws_instance.ubuntu_instance.id
}

output "public_ip" {
  value = aws_instance.ubuntu_instance.public_ip
}

output "private_key_path" {
  value = "my-key-pair.pem"
}