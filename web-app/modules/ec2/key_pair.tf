resource "tls_private_key" "instance_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "instance_key" {
  key_name   = "${var.theme}-key-pair"
  public_key = tls_private_key.instance_key.public_key_openssh
}

resource "local_file" "private_key" {
  content         = tls_private_key.instance_key.private_key_pem
  filename        = "${var.theme}-key-pair.pem"
  file_permission = "0600"
}