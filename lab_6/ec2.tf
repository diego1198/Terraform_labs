resource "aws_instance" "ec2_public_instance" {
  ami                    = "ami-0aa7d40eeae50c9a9"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.public_sec_group.id]
  # lifecycles is used for put rules in create destroy actions in infrastructure  
  # lifecycle {
  #   create_before_destroy = true
  # }
}

resource "aws_security_group" "public_sec_group" {
  name        = "Public Instance SG"
  description = "Allow SSH inbound and unbound traffic"
  vpc_id      = aws_vpc.vpc_virginia.id
  ingress {
    description = "SSH from internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.inbound_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "Name" = "Public Security Group"
  }
}