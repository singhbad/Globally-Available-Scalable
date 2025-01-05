variable "subnet_id" {
  type        = string
  description = "Subnet ID where EC2 will be launched"
}

variable "security_group_id" {
  type        = string
  description = "Security Group ID for EC2"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "enable_public_ip" {
  type        = bool
  description = "Enable public IP for EC2"
  default     = true
}

variable "theme" {
  type        = string
  description = "Naming theme for resources"
}