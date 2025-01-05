variable "cidr_block" {
  type        = string
  description = "CIDR block for VPC"
}

variable "enable_public_ip" {
  type        = bool
  description = "Enable public IP on subnet"
  default     = true
}

variable "theme" {
  type        = string
  description = "Naming theme for resources"
}