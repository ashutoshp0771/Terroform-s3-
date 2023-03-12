# Create S3 bucket

provider "aws" {
  region = var.aws_region
}
# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
    Owner       = var.owner
  }

  lifecycle {
    prevent_destroy = true
  }
}
resource "aws_s3_bucket_acl" "acl" {
  bucket = var.myacl
  acl    = "private"
}
