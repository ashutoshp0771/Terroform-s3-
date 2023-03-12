variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
  default = "pandey"
}

variable "aws_region" {
  description = "Name of region"
  type        = string
  default = "us-east-1"
}

variable "environment" {
  description = "Environment for tagging the S3 bucket"
  type        = string
  default = "dev"
}

variable "myacl" {
  description = "acl description"
  type        = string
  default = "aws_s3_bucket.bucket_name.id"
}

variable "owner" {
  description = "Owner for tagging the S3 bucket"
  type        = string
  default = "pandey"
}
