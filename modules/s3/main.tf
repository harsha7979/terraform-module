resource "aws_s3_bucket" "harshapatel" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_tag
  }
}
