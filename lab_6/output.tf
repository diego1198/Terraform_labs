output "ec2_public_ip" {
  description = "Public's IP of instance"
  value       = aws_instance.ec2_public_instance.public_ip
}