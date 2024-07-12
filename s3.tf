resource "aws_s3_bucket" "main" {
  bucket = "my-terraform-bucket"

  tags = {
    Name = "MyBucket"
  }
}
