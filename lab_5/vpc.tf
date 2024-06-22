resource "aws_vpc" "vpc_us_east_1" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "vpc-virginia"
    name = "VPC VIRGINIA"
    env = "DEV"  
  }
}

resource "aws_vpc" "vpc_us_east_2" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "vpc-ohio"
    name = "VPC OHIO"
    env = "DEV"  
  }
  provider = aws.Ohio
}

