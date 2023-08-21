resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = element(data.aws_availability_zones.azs.names, 0)
  cidr_block = "10.10.1.0/24"
}

resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = element(data.aws_availability_zones.azs.names, 1)
  cidr_block = "10.10.2.0/24"
  
}

resource "aws_subnet" "private3" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = element(data.aws_availability_zones.azs.names, 2)
  cidr_block = "10.10.3.0/24"
  
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id   = aws_vpc.vpc_master.id
  tags = {
    Name = "Master VPC IGW"
  }
}