resource "aws_vpc" "vpc_us_east_1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "vpc-virginia"
    name = "VPC VIRGINIA"
    env = "DEV"  
  }
}

resource "aws_vpc" "vpc_us_east_2" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "vpc-ohio"
    name = "VPC OHIO"
    env = "DEV"  
  }
  provider = aws.Ohio
}