resource "aws_instance" "ec2_public_instance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
}