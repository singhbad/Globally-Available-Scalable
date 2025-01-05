variable "aws_region" {
  description = "AWS region"
  type        = string
}

# Variables for EC2 Instance

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "enable_public_ip" {
  description = "Enable public IP on launch for subnets"
  type        = bool
}

variable "theme" {
    description = "Theme is countries"
    type = string  
}

# Variables for VPCs

variable "cidr_block" {
    description = "CIDR Block range"
    type        = string
}