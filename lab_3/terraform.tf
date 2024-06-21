resource "aws_s3_bucket" "providers" {
    count=4
  bucket = "providers-s3-terraform-course-${random_string.preffix[count.index].id}"

  tags = {
    Name        = "providers bucket"
    Environment = "Dev"
  }
}