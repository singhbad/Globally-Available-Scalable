resource "aws_vpc" "vpcs" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags = {
    Name = "${var.theme}-vpc"
  }
}

resource "aws_subnet" "subnets" {
  vpc_id                  = aws_vpc.vpcs.id
  cidr_block              = var.cidr_block
  map_public_ip_on_launch = var.enable_public_ip
  availability_zone       = "us-east-1a"

  tags = {
    Name = "${var.theme}-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpcs.id
  
  tags = {
    Name = "${var.theme}-igw"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpcs.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.theme}-public-rt"
  }
}

resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.subnets.id
  route_table_id = aws_route_table.public_rt.id
}