data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_instance" "ubuntu_instance" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type              = var.instance_type
  subnet_id                  = var.subnet_id
  associate_public_ip_address = var.enable_public_ip
  key_name                   = aws_key_pair.instance_key.key_name
  vpc_security_group_ids     = [var.security_group_id]

  user_data = templatefile("${path.module}/user_data.tpl", {
    user = "ec2-user"
  })

  tags = {
    Name = "${var.theme}-ubuntu-instance"
  }

  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
}