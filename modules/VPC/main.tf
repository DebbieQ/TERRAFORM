# Create VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.environment}-vpc"
  }
}
 
# Create public subnet
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name        = "${var.environment}-public-subnet"
  }
}
 
# Create private subnets 
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.availability_zone
  cidr_block = "10.0.2.0/24"
  tags = {
    Name        = "${var.environment}-private-subnet"
  }
}
