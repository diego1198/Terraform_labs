resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    "Name" = "Virginia_vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.subnets[0]
  map_public_ip_on_launch = true
  tags = {
    "Name" = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_virginia.id
  cidr_block = var.subnets[1]
  tags = {
    "Name" = "private_subnet"
  }
}

resource "aws_internet_gateway" "public_gateway" {
  vpc_id = aws_vpc.vpc_virginia.id
  tags = {
    "Name" = "Gtw vpc virginia"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc_virginia.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public_gateway.id
  }
  tags = {
    "Name" = "Public Route Table"
  }
}

resource "aws_route_table_association" "route_table_assoc_public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}